%1

aluno(joao,algoritmos).
aluno(pedro,algoritmos).
aluno(maria,paradigmas).
aluno(rui,paradigmas).
aluno(manuel,paradigmas).
aluno(pedro,paradigmas).
aluno(rui,calculo).

%2
estuda(joao).
estuda(maria).
estuda(manuel).


fazparadigmas(X) :-
    aluno(X,paradigmas),
    estuda(X).

%3
passaro(pardal).
passaro(arara).
passaro(canario).
