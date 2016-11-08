%10
quadrado(X,Z):-
    forall(between(1,X,_),
    ((forall(between(1,X,_),
    write(Z))),nl)).