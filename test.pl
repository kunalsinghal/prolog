child(a, b). child(c, b).
child(a, c). 


ancestor(X, Y) :- child(Y, X).
ancestor(X, Y) :- child((Z), X), ancestor(Z, Y).
h(Z) :- child(a, Z), not(child(c, Z)).
