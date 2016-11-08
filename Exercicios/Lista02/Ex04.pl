%04
cubo(X):-
    forall(between(1,X,Y),
    (Cub is Y*Y*Y,write(Cub),nl)).