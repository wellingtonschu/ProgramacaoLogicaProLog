membro(X,[X|_]).
membro(X,[_|Xs]):-
    membro(X,Xs).