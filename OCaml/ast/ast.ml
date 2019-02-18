type op = Add | Mul | Sub | Div
type expr =
		ASTNum of int
	| ASTId of string
	| ASTPrim of op * expr * expr
	| ASTBool of bool
	| ASTAlternative of expr * expr * expr
	| ASTEcho of expr
	| ASTDec of expr * expr * expr
	| ASTDecConst of expr * expr * expr
	| ASTType of string

	(*|ASTSequence of expr*exprs*)
(*type exprs=
	expr
	|expr*exprs*)
	

let string_of_op op =
	match op with
		Add -> "add"
		| Mul -> "mul"
		| Sub -> "sub"
		| Div -> "div"
		
	
let op_of_string op =
	match op with
		"add" -> Add
		| "mul" -> Mul
		| "sub" -> Sub
		| "div" -> Div
		| _-> failwith "Error op matching"

