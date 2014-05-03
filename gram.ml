type token =
  | Sstr of (string)
  | Ustr of (string)
  | OPENP
  | CLOSEP
  | IF
  | COMMA
  | NOT
  | EQUALS
  | FS
  | EOF
  | SEMICOLON
  | NEWLINE

open Parsing;;
let _ = parse_error;;
# 2 "gram.mly"
open Logic
open Printf

# 22 "gram.ml"
let yytransl_const = [|
  259 (* OPENP *);
  260 (* CLOSEP *);
  261 (* IF *);
  262 (* COMMA *);
  263 (* NOT *);
  264 (* EQUALS *);
  265 (* FS *);
    0 (* EOF *);
  266 (* SEMICOLON *);
  267 (* NEWLINE *);
    0|]

let yytransl_block = [|
  257 (* Sstr *);
  258 (* Ustr *);
    0|]

let yylhs = "\255\255\
\003\000\003\000\002\000\002\000\001\000\001\000\001\000\005\000\
\005\000\006\000\006\000\006\000\006\000\006\000\006\000\004\000\
\004\000\000\000\000\000\000\000"

let yylen = "\002\000\
\001\000\001\000\002\000\003\000\000\000\002\000\002\000\002\000\
\004\000\004\000\001\000\001\000\003\000\002\000\003\000\001\000\
\003\000\002\000\002\000\002\000"

let yydefred = "\000\000\
\005\000\000\000\000\000\000\000\000\000\000\000\012\000\000\000\
\000\000\000\000\019\000\000\000\000\000\001\000\002\000\020\000\
\006\000\007\000\000\000\000\000\000\000\000\000\003\000\000\000\
\000\000\000\000\000\000\008\000\000\000\013\000\004\000\017\000\
\000\000\000\000\010\000\009\000"

let yydgoto = "\004\000\
\005\000\011\000\016\000\012\000\018\000\013\000"

let yysindex = "\049\000\
\000\000\004\255\248\254\000\000\007\255\010\255\000\000\021\255\
\021\255\004\255\000\000\017\255\047\255\000\000\000\000\000\000\
\000\000\000\000\039\255\021\255\041\255\008\255\000\000\027\255\
\021\255\021\255\021\255\000\000\023\255\000\000\000\000\000\000\
\008\255\030\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\032\000\025\255\000\000\000\000\
\000\000\000\000\000\000\000\000\016\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\031\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\037\255\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\044\000\000\000\248\255\000\000\251\255"

let yytablesize = 55
let yytable = "\019\000\
\014\000\015\000\021\000\022\000\006\000\007\000\008\000\006\000\
\007\000\008\000\009\000\029\000\020\000\009\000\010\000\026\000\
\032\000\017\000\034\000\016\000\033\000\006\000\007\000\008\000\
\016\000\024\000\035\000\009\000\011\000\011\000\011\000\018\000\
\011\000\011\000\014\000\014\000\014\000\031\000\036\000\014\000\
\015\000\015\000\015\000\027\000\030\000\015\000\026\000\028\000\
\026\000\001\000\002\000\003\000\025\000\023\000\026\000"

let yycheck = "\005\000\
\009\001\010\001\008\000\009\000\001\001\002\001\003\001\001\001\
\002\001\003\001\007\001\020\000\003\001\007\001\011\001\008\001\
\025\000\011\001\027\000\004\001\026\000\001\001\002\001\003\001\
\009\001\009\001\004\001\007\001\004\001\005\001\006\001\000\000\
\008\001\009\001\004\001\005\001\006\001\011\001\009\001\009\001\
\004\001\005\001\006\001\005\001\004\001\009\001\008\001\009\001\
\008\001\001\000\002\000\003\000\006\001\010\000\008\001"

let yynames_const = "\
  OPENP\000\
  CLOSEP\000\
  IF\000\
  COMMA\000\
  NOT\000\
  EQUALS\000\
  FS\000\
  EOF\000\
  SEMICOLON\000\
  NEWLINE\000\
  "

let yynames_block = "\
  Sstr\000\
  Ustr\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 19 "gram.mly"
    ( false )
# 121 "gram.ml"
               : bool))
; (fun __caml_parser_env ->
    Obj.repr(
# 20 "gram.mly"
            ( true )
# 127 "gram.ml"
               : bool))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Logic.atom list) in
    Obj.repr(
# 23 "gram.mly"
               ( _2 )
# 134 "gram.ml"
               : Logic.atom list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'lis) in
    Obj.repr(
# 24 "gram.mly"
                 (  flush stdout; _1 )
# 141 "gram.ml"
               : Logic.atom list))
; (fun __caml_parser_env ->
    Obj.repr(
# 28 "gram.mly"
 ( [] )
# 147 "gram.ml"
               : Logic.exp list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Logic.exp list) in
    Obj.repr(
# 29 "gram.mly"
                ( _1 )
# 154 "gram.ml"
               : Logic.exp list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Logic.exp list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 30 "gram.mly"
                   ( _2 :: _1 )
# 162 "gram.ml"
               : Logic.exp list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'dalton) in
    Obj.repr(
# 33 "gram.mly"
           ( Fact(_1))
# 169 "gram.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'dalton) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'lis) in
    Obj.repr(
# 34 "gram.mly"
                   ( Rule(_1, _3) )
# 177 "gram.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'lis) in
    Obj.repr(
# 37 "gram.mly"
                       ( Term(_1, _3) )
# 185 "gram.ml"
               : 'dalton))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 38 "gram.mly"
       ( Term(_1, []) )
# 192 "gram.ml"
               : 'dalton))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 39 "gram.mly"
        ( Var(Name(_1)) )
# 199 "gram.ml"
               : 'dalton))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'dalton) in
    Obj.repr(
# 40 "gram.mly"
                       ( _2 )
# 206 "gram.ml"
               : 'dalton))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'dalton) in
    Obj.repr(
# 41 "gram.mly"
              ( Not(_2) )
# 213 "gram.ml"
               : 'dalton))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'dalton) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'dalton) in
    Obj.repr(
# 42 "gram.mly"
                       (Term("equal", [_1; _3]))
# 221 "gram.ml"
               : 'dalton))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'dalton) in
    Obj.repr(
# 45 "gram.mly"
        ( [ _1 ] )
# 228 "gram.ml"
               : 'lis))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'dalton) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'lis) in
    Obj.repr(
# 46 "gram.mly"
                   ( _1:: _3 )
# 236 "gram.ml"
               : 'lis))
(* Entry input *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry query *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry action *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let input (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Logic.exp list)
let query (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 2 lexfun lexbuf : Logic.atom list)
let action (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 3 lexfun lexbuf : bool)
;;
# 48 "gram.mly"


# 272 "gram.ml"
