remU([_], []).
remU([X|Xs], [X|Y]):-
    remU(Xs,Y).