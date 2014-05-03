fact(1, 1).
fact(N, X) :- not(N = 1), M is N-1, fact(M, Y), X is Y*N. 