ultimo(X,[X]).
ultimo(X,[_|Xs]):-
    ultimo(X,Xs).