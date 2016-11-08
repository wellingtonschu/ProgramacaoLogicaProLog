%01
maior_menor(X,Y,Z,Maior,Menor):-
    (X>Y,X>Z,Maior=X,!;Y>X,Y>Z,Maior=Y,!;Z>Y,Z>X,Maior=Z;X=Y,X=Z,Maior=X,!),
    (X<Y,X<Z,Menor=X,!;Y<X,Y<Z,Menor=Y,!;Z<Y,Z<X,Menor=Z;X=Y,X=Z,Menor=X,!).