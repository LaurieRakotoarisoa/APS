{
open Parser        (* The type token is defined in parser.mli *)
exception Eof
}
rule token = parse
[' ' '\t']       { token lexbuf }     (* skip blanks *)
| ['\n']          { EOL }
| "if"   			{ IF }
| ['0'-'9']+('.'['0'-'9'])? as lxm { NUM(int_of_string lxm) }
| "true" as b { BOOL(bool_of_string b) }
| "false" as b { BOOL(bool_of_string b) }
| "add"            { PLUS }
| "sub"            { MINUS }
| "mul"            { TIMES }
| "div"            { DIV }
| '('              { LPAR }
| ')'              { RPAR }
| '['			   { LCRO }
| ']'			   { RCRO }
| "ECHO" {ECHO}
| "CONST" {CONST}
| "int" as x {TYPENUM(x)}
| "bool" as x { TYPEBOOL(x) }
| ['a'-'z''A'-'Z']+(['a'-'z''A'-'Z''0'-'9'])* as x { IDENT(x) }
| eof              { raise Eof }
