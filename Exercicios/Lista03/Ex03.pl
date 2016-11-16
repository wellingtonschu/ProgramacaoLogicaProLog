%3
enesimo(1, X, [X|_]).
enesimo(N, X, [_|Xs]):-
    enesimo(N1,X,Xs),
    N is N1+1.