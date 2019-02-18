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

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
open Ast
# 25 "parser.ml"
let yytransl_const = [|
  261 (* IF *);
  262 (* PLUS *);
  263 (* MINUS *);
  264 (* TIMES *);
  265 (* DIV *);
  266 (* LPAR *);
  267 (* RPAR *);
  268 (* LCRO *);
  269 (* RCRO *);
  270 (* EOL *);
  272 (* ECHO *);
  273 (* CONST *);
    0|]

let yytransl_block = [|
  257 (* NUM *);
  258 (* IDENT *);
  259 (* TYPEBOOL *);
  260 (* TYPENUM *);
  271 (* BOOL *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\003\000\005\000\005\000\004\000\004\000\
\000\000"

let yylen = "\002\000\
\002\000\002\000\002\000\001\000\001\000\001\000\005\000\005\000\
\005\000\005\000\006\000\002\000\001\000\001\000\004\000\003\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\004\000\000\000\000\000\005\000\000\000\000\000\
\017\000\000\000\000\000\000\000\014\000\013\000\000\000\000\000\
\000\000\000\000\000\000\000\000\006\000\012\000\000\000\001\000\
\002\000\003\000\016\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\015\000\000\000\
\007\000\008\000\009\000\010\000\011\000"

let yydgoto = "\002\000\
\009\000\010\000\011\000\012\000\015\000"

let yysindex = "\013\000\
\018\255\000\000\000\000\003\255\252\254\000\000\028\255\013\255\
\000\000\002\255\004\255\017\255\000\000\000\000\028\255\028\255\
\028\255\028\255\028\255\028\255\000\000\000\000\003\255\000\000\
\000\000\000\000\000\000\028\255\028\255\028\255\028\255\028\255\
\028\255\028\255\006\255\021\255\025\255\026\255\000\000\029\255\
\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\027\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\249\255\000\000\000\000\016\000"

let yytablesize = 43
let yytable = "\022\000\
\016\000\017\000\018\000\019\000\020\000\013\000\014\000\027\000\
\028\000\029\000\030\000\031\000\032\000\001\000\023\000\024\000\
\041\000\025\000\003\000\004\000\034\000\035\000\036\000\037\000\
\038\000\039\000\040\000\005\000\003\000\021\000\026\000\042\000\
\006\000\007\000\008\000\043\000\044\000\005\000\033\000\045\000\
\006\000\000\000\006\000"

let yycheck = "\007\000\
\005\001\006\001\007\001\008\001\009\001\003\001\004\001\015\000\
\016\000\017\000\018\000\019\000\020\000\001\000\002\001\014\001\
\011\001\014\001\001\001\002\001\028\000\029\000\030\000\031\000\
\032\000\033\000\034\000\010\001\001\001\002\001\014\001\011\001\
\015\001\016\001\017\001\011\001\011\001\010\001\023\000\011\001\
\014\001\255\255\015\001"

let yynames_const = "\
  IF\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIV\000\
  LPAR\000\
  RPAR\000\
  LCRO\000\
  RCRO\000\
  EOL\000\
  ECHO\000\
  CONST\000\
  "

let yynames_block = "\
  NUM\000\
  IDENT\000\
  TYPEBOOL\000\
  TYPENUM\000\
  BOOL\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 22 "parser.mly"
                              ( _1 )
# 136 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stat) in
    Obj.repr(
# 23 "parser.mly"
           (_1)
# 143 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'dec) in
    Obj.repr(
# 24 "parser.mly"
           (_1)
# 150 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 29 "parser.mly"
                             ( ASTNum(_1) )
# 157 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 30 "parser.mly"
                   ( ASTBool(_1) )
# 164 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 31 "parser.mly"
                              ( ASTId(_1) )
# 171 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 32 "parser.mly"
                              ( ASTPrim(Ast.Add, _3, _4) )
# 179 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 33 "parser.mly"
                              ( ASTPrim(Ast.Sub, _3, _4) )
# 187 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 34 "parser.mly"
                              ( ASTPrim(Ast.Mul, _3, _4) )
# 195 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 35 "parser.mly"
                              ( ASTPrim(Ast.Div, _3, _4) )
# 203 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 36 "parser.mly"
                              (ASTAlternative(_3,_4,_5))
# 212 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 40 "parser.mly"
           (ASTEcho(_2))
# 219 "parser.ml"
               : 'stat))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 43 "parser.mly"
          (ASTType(_1))
# 226 "parser.ml"
               : 'mtype))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 44 "parser.mly"
               ( ASTType(_1) )
# 233 "parser.ml"
               : 'mtype))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'mtype) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 47 "parser.mly"
                        ( ASTDecConst(ASTId(_2),_3,_4))
# 242 "parser.ml"
               : 'dec))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'mtype) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 48 "parser.mly"
                    ( ASTDec(ASTId(_1),_2,_3))
# 251 "parser.ml"
               : 'dec))
(* Entry line *)
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
let line (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.expr)
