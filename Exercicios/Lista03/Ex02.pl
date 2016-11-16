%2
produto([],1).
produto([X|Xs], S):-
    produto(Xs, S2),
    S is S2 * X.