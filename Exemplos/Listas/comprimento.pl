compr([],0).
compr([_|Xs],N):-
    compr(Xs,N1),
    N is N1+1.