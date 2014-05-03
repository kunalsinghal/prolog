%{
open Logic
open Printf

%}
%token <string> Sstr
%token <string> Ustr
%token OPENP CLOSEP IF COMMA NOT EQUALS FS EOF SEMICOLON
%token NEWLINE
%start input
%type <Logic.exp list> input
%start query
%type <Logic.atom list> query
%start action
%type <bool> action

%%
action: 
	FS { false }
|	SEMICOLON { true };

query:
	NEWLINE query { $2 }
|	lis FS NEWLINE {  flush stdout; $1 }; 


input: 
	{ [] }
|	input NEWLINE { $1 };
|	input expression { $2 :: $1 }

expression:	
	dalton FS { Fact($1)}
|	dalton IF lis FS { Rule($1, $3) }; 

dalton: 
	Sstr OPENP lis CLOSEP { Term($1, $3) }
|	Sstr { Term($1, []) }
| 	Ustr { Var(Name($1)) }
| 	OPENP dalton CLOSEP { $2 }  
| 	NOT dalton { Not($2) }
|	dalton EQUALS dalton {Term("equal", [$1; $3])};

lis: 	
	dalton { [ $1 ] }
|	dalton COMMA lis { $1:: $3 }; 
		%%


