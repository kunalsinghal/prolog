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

val input :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Logic.exp list
val query :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Logic.atom list
val action :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> bool
