%questao1
media:-
    ler(Num1,Num2,Num3),
	calcular(Num1,Num2,Num3,Resultado),
	mostrar(Resultado).

ler(Num1,Num2,Num3):-
    write('informe numero '),read(Num1),
	write('informe numero '),read(Num2),
	write('informe numero '),read(Num3).

calcular(Num1,Num2,Num3,Resultado):-
    Resultado is 
        ((Num1+Num2+Num3)/3)*((Num1+Num2+Num3)/3)*((Num1+Num2+Num3)/3).

mostrar(Resultado):-
    write('media ao cubo = '),
    write(Resultado).

%questao2
soma:-
    ler(Num1,Num2),
	calcular(Num1,Num2,Resultado),
	mostrar(Resultado).

ler(Num1,Num2):-
    write('informe numero '),read(Num1),
	write('informe numero '),read(Num2).

calcular(Num1,Num2,Resultado):-
    Resultado is
        ((Num1+Num2)*1.02).

 mostrar(Resultado):-
    write('soma dos numeros com acrescimo de 2% = '),
    write(Resultado).

%questao3
maiorque20:-
    ler(Num),
    calcular(Num,Resultado),
    mostrar(Resultado).

ler(Num):-
    write('informe o numero: '),
    read(Num).

calcular(Num,Resultado):-
    (Num > 20) -> Resultado is Num/2; Resultado is Num.

mostrar(Resultado):-
    write(Resultado).