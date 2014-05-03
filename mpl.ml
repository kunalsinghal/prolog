open Logic;;
open Printf;;

let lexbuf = Lexing.from_channel (open_in Sys.argv.(1));; 


let filt = function
 Fact(Var(_)) -> false
| Rule(Var(_), _) -> false
| _ -> true ;; 

let aList = Fact(Term("equal", [Var(Name "X"); Var(Name "X")])) :: (List.filter filt (Gram.input Lex.token lexbuf)) ;; 


let rec find value = function 
(x, ret) :: t -> if x = value then ret else 
	find value t
| _ -> -1 ;;





let rec print_term = function
	Not(x) -> let () = print_string "Not(" in let () = print_term x in print_string ")"
|	Var(Name str) -> print_string str 
|  	Var(Num n) -> print_string(string_of_int n)
| 	Term(str, lis) -> let () =  print_string str in match lis with 
	[] -> () | x -> let () = print_string "(" in let () = print_term_list x in print_string ")" 
and print_term_list = function [] -> () | [x] -> print_term x | 
	h :: t -> let () = print_term h in let () = print_string ", " in print_term_list t ;; 

let rec printsub sub goals = 
	let rec contains value = function [] -> false 
	| h :: t ->   if h = value then true else contains value t
	in 
	let rec varInLis app = function [] -> app 
	| h ::t -> varInLis (varInAtom app h) t
	and varInAtom app = function Var(Name(str)) -> if contains str app then app else str :: app 
	| Term(_, lis) -> varInLis app lis 
	| Not(x) -> varInAtom app x
	| _ -> app in

	let rec printList sub boolean = function 
	[] -> if boolean then let () = print_endline "true" in false else true 
	| str :: t -> 
		let ss = (substitute sub) (Var(Name str)) in 
			if ss <> Var(Name str) then 
				let () = print_string (str^" = ") in 
					let () = print_term ss in 
						let () = print_string "\n" in 
							printList sub false t 
			else 
				printList sub boolean t  
	in 
	printList sub true (List.rev (varInLis [] goals)) ;; 
				



let rec recList num sub app = function 
Var(Name(str)) :: t -> 
	let q = find str sub in 
		if q = -1 then 
			recList (num+1) ((str, num)::sub) (Var(Num(num))::app) t 
		else  
			recList num ((str, q)::sub) (Var(Num(q))::app) t
| Term(p, lis) :: t ->
	let n, s, l = recList num sub [] lis in 
		recList n s (Term(p, l) :: app) t
| Not(x)::t -> let a,b,(c::d) = recList num sub [] (x::t) in a,b,(List.rev app)@(Not(c) :: d)
| x :: t -> recList num sub (x :: app) t
| [] -> (num, sub, List.rev app)
;;

let recexp num = function 
|	Fact(x) -> let n,_,y = recList num [] [] [x] in (n, Fact(List.hd y))
|	Rule(x, lis) -> let n,sub,y = recList num [] [] [x] in 
		let n,_,z = recList n sub [] lis in
			(n, Rule((List.hd y), z)) ;; 












let getaction() = let lexbuf = Lexing.from_channel stdin in 
		 Gram.action Lex.token lexbuf;;  

let rec unifyone head tail sub stack num = function [] -> (num, stack) 
| Fact(x)::t -> 
	(let n, Fact(x) =  recexp num (Fact x) in 
	try  let uni = mgu(x, head) in 
		(* let () = match x with Term(str,[Term(u, []); Term(v, [])]) -> print_endline (u^v) | _ -> print_endline "other" in  *)
		(* let () = match head with Term(str,[Term(u, []); Term(v, [])]) -> print_endline (u^v) | _ -> print_endline "other" in  *)
		unifyone head tail sub (((List.map (substitute uni) tail), (compose sub uni)) :: stack) n t 
	with Failure exp -> (* let () = print_endline "fail"  in *) unifyone head tail sub stack num t)

| Rule(x, lis)::t -> 
	(let n, Rule(x, lis) =  recexp num (Rule(x, lis)) in
	try  let uni = mgu(x, head) (* let () = print_term head in let () = print_endline " unifyone in\n"  *)in 
		(* let () = print_term (List.nth (List.map (substitute uni) lis) 1) in  *)
		unifyone head tail sub (((List.map (substitute uni) (lis @ tail)), (compose sub uni)) :: stack) n t 
	with Failure exp -> unifyone head tail sub stack num t );; 



let rec existbacktrack num = function 
	[] -> false
| 	([] , sub) :: t -> true
|   (Not(head) :: tail, sub) :: t -> 
		if existbacktrack num [[head], id] then 
			existbacktrack num t else 
		existbacktrack num ((tail, sub)::t)
|   (head :: tail, sub) :: t -> 
		let num,stack = unifyone head tail sub t num aList in 
			existbacktrack num stack ;; 

let rec backtrack num goals boolean = function 
[] -> if boolean then print_endline "false" else () 
| 	([] , sub) :: t -> 
		let check = printsub sub goals in 
			let _ = flush stdout in if check then 
			if getaction() then 
				backtrack num goals false t else () else ()
|   (head :: tail, sub) :: t ->(*  let () = print_term head in *) (match head with Not(head) -> 
		if existbacktrack num [[head], id] then 
			backtrack num goals boolean t else 
		backtrack num goals boolean ((tail, sub)::t)
		|   head -> 
		let num,stack = unifyone head tail sub t num aList in 
			backtrack num goals boolean stack) ;; 


let doit q = 

	let _ = backtrack 0 q true [(q,id)]
	in let () = print_string "\n"
	in flush stdout

;;

(* let Fact(x) = (List.nth aList ((List.length aList) -1)) in let () = print_term x in flush stdout;; *)

let solve() = 
	let () = print_string "?- " in 
	let _ = flush stdout in 
	let lexbuf = Lexing.from_channel stdin in 
		let q = Gram.query Lex.token lexbuf in 
		(* let () = print_term (List.hd q) in   *)
		(* let () = print_endline "" in *)
			doit q;;








let rec f() = 
	let _ = solve() in f() ;; 

f();; 