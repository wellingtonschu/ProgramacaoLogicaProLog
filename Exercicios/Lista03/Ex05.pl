%5
remover(_,[],[]).
remover(X,[X|Xs],Xz):-
    remover(X,Xs,Xz).
remover(X,[X1|Xs],[X1|Xz]):-
    X =\= X1,
    remover(X,Xs,Xz).
