%4
calculos([X|Xs],Maior,Menor,Media):-
    max([X|Xs],K),
    min([X|Xs],L),
    media([X|Xs],M),
	Maior = K,
    Menor = L,
    Media= M.

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
    !
    ,min([X|Cauda],Min).
min([_,Y|Cauda],Min):-
    min([Y|Cauda],Min).

tam_lista([_], 1):-
    !.
tam_lista([_|L], T):-
    tam_lista(L, X),
    T is X + 1.

media(L,M):-
    soma_lista(L, S),
    tam_lista(L,T),
    M is S / T.