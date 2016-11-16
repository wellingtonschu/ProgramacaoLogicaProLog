%4
calculos([X|Xs],min2,max2):-
    max([X|Xs],K),
    min([X|Xs],L),
    max2 = K,
    min2 = L.

max([X],X).
max([X,Y|Cauda],Max):-
    X>=Y,
    !,
    max([X|Cauda],Max).
max([_,Y|Cauda],Max):-
    max([Y|Cauda],Max).

min([X],X).
min([X,Y|Cauda],Min):-
    X=<Y,
    !,
    min([X|Cauda],Min).
min([_,Y|Cauda],Min):-
    min([Y|Cauda],Min).