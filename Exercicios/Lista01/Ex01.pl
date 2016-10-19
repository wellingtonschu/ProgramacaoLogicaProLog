%Base de Dados
%Homem
homem(pedro).
homem(marcos).
homem(ze).

%Mulher
mulher(maria).
mulher(Aoana).

%Idade
idade(ze,30).
idade(maria,40).
idade(marcos,20).
idade(pedro,25).
idade(Aoana,28).

%Gosta
gosta(ze,aventura).
gosta(maria,comedia).
gosta(Aoana,romance).
gosta(marcos,terror).
gosta(marcos,romance).
gosta(pedro,romance).
gosta(maria,romance).

%Opcao
opcao(ze,20,40).
opcao(maria,25,55).

%Questoes
%A)
afinidade_filme(X,Y):- gosta(X,Z),gosta(Y,Z).

%B)
casal(X,Y) :- homem(X),mulher(Y).
casal(X,Y) :- homem(Y),mulher(X).

%C)
casal_afinidade_filme(X,Y) :- casal(X,Y),afinidade_filme(X,Y).

%D)
casal_afinidade_idade(X,Y):- casal(X,Y),opcao(X,A,B), idade(Y,C),C>=A,C=<B.

%D)
casal_total(X,Y) :- casal_afinidade_filme(X,Y), casal_afinidade_idade(X,Y).