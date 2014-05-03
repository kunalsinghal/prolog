type var = Num of int | Name of string ;; 
type atom = Term of string * atom list | Var of var | Not of atom ;;
type exp = Fact of atom | Rule of atom * atom list ;;



(* Code for binary search tree *)
type ('a,'b) bst = Node of 'a * 'b * ('a, 'b) bst * ('a, 'b) bst | Null ;; 

let rec insert tree (str, num) = match tree with
| Null -> Node(str, num, Null, Null)
| Node(x, y, left, right) -> 
	if x < str then Node(x, y, left, insert right (str, num)) else 
	Node(x, y, (insert left (str, num)), right) ;; 

let rec getData tree str = match tree with
| Null -> failwith "Data not present in the records."
| Node(x, y, left, right) -> 
	if x = str then y else 
	if x < str then getData right str else 
		getData left str ;; 
let rec contains tree str = match tree with
	| Null -> false 
	| Node(x, _, left, right) -> 
	if x = str then true else 
	if x < str then contains right str else 
		contains left str

let rec bst_of_list = function [] -> Null | h::t -> insert (bst_of_list t) h ;; 

(* Part Four *)
type subt = (var, atom) bst;; 
type sub = atom -> atom ;; 

let sub_of_subt (tr:subt):sub = function Var(str) -> if contains tr str then getData tr str else Var(str) 
| x -> x ;; 

let id = sub_of_subt Null ;; 

(* Part Five *)
let rec substitute rho = function Var(str) -> rho (Var str) 
| Term(str, lis) -> Term(str, (List.map (substitute rho) lis))
| Not(x) -> Not(substitute rho x) ;; 

(* Part Six *)
let rec compose f g x = g(f(x)) ;; 

(* Part Seven *)
let rec mgu = 
let rec varIn = function (Var str) -> (function Var(x) -> x = str 
| Term(_, lis) -> (List.filter (varIn (Var str)) lis) <> [] )
| _ -> function _ -> false 
in
let rec mguParallel acc = function ([], []) -> acc
| (h1::t1, h2::t2) -> mguParallel (compose acc (mgu ((substitute acc h1), (substitute acc h2)))) (t1, t2)
| _ -> failwith "NotUnif" 
in 
function 
	(Not(x), Not(y)) -> mgu(x, y)
| ((Var x), (Var y) ) -> if x = y then id else sub_of_subt (bst_of_list [(x, Var y)]) 
| (Term(str, lis), (Var x)) 
| ((Var x), Term(str, lis)) -> if lis = [] then sub_of_subt (bst_of_list [(x, Term(str, lis))]) 
	else if varIn (Var x) (Term(str, lis)) then failwith "NotUnif" else 
	sub_of_subt (bst_of_list [(x, Term(str, lis))]) 
| (Term(str1, lis1), Term(str2, lis2)) -> if str1 <> str2 then failwith "NotUnif" else 
	mguParallel id (lis1, lis2) 
| _ -> failwith "NotUnif"
;;
