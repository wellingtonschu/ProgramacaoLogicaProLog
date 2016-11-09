remover(X[X|Xs],Xs).
remover(X,[Y|Xs],[Y|Zs]):-
    remover(X,Xs,Zs).