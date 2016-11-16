%1
soma_lista([],0).
soma_lista([X|Xs], S):-
    soma_lista(Xs, S2),
    S is S2 + X.