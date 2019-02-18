%{
open Ast
%}
%token <int> NUM
%token <string> IDENT TYPEBOOL TYPENUM
%token IF
%token PLUS MINUS TIMES DIV
%token LPAR RPAR LCRO RCRO
%token EOL
%token <bool> BOOL
%token ECHO
%token CONST


 

%start line             /* the entry point */
%type <Ast.expr> line

%%
	line:
	expr EOL                     { $1 }
	| stat EOL{$1}
	| dec EOL {$1}
	;
	
	
	expr:
		NUM                        { ASTNum($1) }
	| BOOL 			     		 { ASTBool($1) }
	| IDENT                      { ASTId($1) }
	| LPAR PLUS expr expr RPAR   { ASTPrim(Ast.Add, $3, $4) }
	| LPAR MINUS expr expr RPAR  { ASTPrim(Ast.Sub, $3, $4) }
	| LPAR TIMES expr expr RPAR  { ASTPrim(Ast.Mul, $3, $4) }
	| LPAR DIV expr expr RPAR    { ASTPrim(Ast.Div, $3, $4) }
	| LPAR IF expr expr expr RPAR{ASTAlternative($3,$4,$5)}
	;
	
	stat:
		ECHO expr{ASTEcho($2)}
	;
	mtype:
		TYPENUM {ASTType($1)}
		| TYPEBOOL 	 { ASTType($1) }
	;
	dec:
		CONST IDENT mtype expr{ ASTDecConst(ASTId($2),$3,$4)}
		|IDENT mtype expr { ASTDec(ASTId($1),$2,$3)}
	;
		
		
	
		  
		
