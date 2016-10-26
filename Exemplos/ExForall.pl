prog:- forall(between(1,5,I), (write(I), nl)).

prog(X):- forall(between(1,X,I), (Quadrado is I*I, write('Quadrado de '), write(I), write(' = '), write(Quadrado), nl)).