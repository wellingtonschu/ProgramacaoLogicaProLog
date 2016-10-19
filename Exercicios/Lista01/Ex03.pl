%Base de dados
%Come
come(urso,peixe).
come(peixe,peixinho).
come(peixinho,alga).
come(peixe,alga).
come(urso,raposa).
come(veado,grama).
come(peixe,minhoca).
come(urso,guaxinim).
come(raposa,coelho).
come(urso,veado).
come(lince,veado).
come(planta_carnivora,mosca).
come(veado,planta_carnivora).

%Animal
animal(urso).
animal(peixe).
animal(raposa).
animal(veado).
animal(minhoca).
animal(lince).
animal(coelho).
animal(guaxinim).
animal(mosca).
animal(peixinho).

%Planta
planta(grama).
planta(alga).
planta(planta_carnivora).

%A
carnivoro(X):- animal(Y), come(X,Y).

%B
herbivoro(X):-planta(Y), come(X,Y).

%C
predador(X):-animal(X),carnivoro(X).

%D
presa(X):-animal(X),animal(Y), come(Y,X).

%E
cacado(X):- presa(X).

%F
onivoro(X):- carnivoro(X),herbivoro(X).

%G
cadeia_alimentar(X,Y):- come(X,Y).
cadeia_alimentar(X,Y):- come(X,A),cadeia_alimentar(A,Y).