{
open Gram (* parser is gram.mly *)
}
let digit = ['0'-'9']
let sstr = ['a'-'z'] (['a'-'z']|['A'-'Z']|digit|'_'|'`')*
let ustr = ['A'-'Z'] (['a'-'z']|['A'-'Z']|digit|'_'|'`')*
let nonendl = [^'\n']*
rule token = parse
| [' ' '\t'] { token lexbuf }
| "not" { NOT }
| ',' { COMMA }
| ":-" { IF }
| '(' { OPENP }
| ')' { CLOSEP }
| '=' { EQUALS }
| '.' { FS }
| '\n' { NEWLINE }
| ';' { SEMICOLON }
| sstr as x { Sstr(x) }
| ustr as x { Ustr(x) }
| eof { EOF }
| "%" nonendl {token lexbuf}
| _ { token lexbuf }