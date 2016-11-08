%08
distancia((A,B),(C,D),X):-
    Y is ((C-A)^2)+((D-B)^2),
    X is sqrt(Y),
    write(X).