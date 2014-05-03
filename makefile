all:
	ocamlc -c logic.ml
	ocamlyacc gram.mly
	ocamlc -c gram.mli
	ocamllex lex.mll
	ocamlc -c lex.ml
	ocamlc -c gram.ml
	ocamlc -c mpl.ml
	ocamlc -o gram lex.cmo gram.cmo logic.cmo mpl.cmo
