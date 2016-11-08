%05
entre(N1,N2):-
    forall(between(N1,N2,X),
    (Num is X,write(Num),nl)).