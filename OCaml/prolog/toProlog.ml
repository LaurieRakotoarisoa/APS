open Ast
let int_of_bool b = if b then 1 else 0


let rec print_prolog e =
	match e with
		ASTNum n -> Printf.printf"%d" n
	| ASTBool b ->  Printf.printf"%d" (int_of_bool b)	
	| ASTId x -> Printf.printf"\"%s\"" x
	| ASTPrim(op, e1, e2) -> (
	Printf.printf"%s" (string_of_op op);
	Printf.printf"(";
	print_prolog e1;
	Printf.printf",";
	print_prolog e2;
	Printf.printf")";
	)
	| ASTAlternative(cond,cons,alter) ->(
	Printf.printf"if( ";
	print_prolog cond;
	Printf.printf",";
	print_prolog cons;
	Printf.printf",";
	print_prolog alter;
	Printf.printf" )";
	)
	| ASTEcho(e) ->(
	Printf.printf"echo(";
	print_prolog e;
	Printf.printf")";
	)
	| ASTDec(i,t,e) ->(
	Printf.printf"declaration(";
	print_prolog i;
	Printf.printf",";
	print_prolog t;
	Printf.printf",";
	print_prolog e;
	Printf.printf")";
	)
	| ASTDecConst(i,t,e) ->(
	Printf.printf"declarationConst(";
	print_prolog i;
	Printf.printf",";
	print_prolog t;
	Printf.printf",";
	print_prolog e;
	Printf.printf")";
	)
	| ASTType(t) ->
	Printf.printf"\"%s\"" t
	
	(*
	| ASTSequence(le) ->(
	let rec print_sequence l= match l with
	|[]-> Printf.printf"]";
	|head::body->
	begin
	print_prolog head;
	print_sequence body
	end
	;;
	Printf.printf"[ ";
	print_sequence le;
	)
	*)
	
(*		
let _ =
	try
		let lexbuf = Lexing.from_channel stdin in
		let e = Parser.line Lexer.token lexbuf in
			print_prolog e;
			print_char '\n'
	with Lexer.Eof -> exit 0*)
