type token =
  | NUM of (int)
  | IDENT of (string)
  | TYPEBOOL of (string)
  | TYPENUM of (string)
  | IF
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | LPAR
  | RPAR
  | LCRO
  | RCRO
  | EOL
  | BOOL of (bool)
  | ECHO
  | CONST

val line :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.expr
