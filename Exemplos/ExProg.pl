prog:-  ler(Dado),
        calcular(Dado, Resultado),
        mostrar(Resultado).
ler(Dado):- write('Digite um valor'), read(Dado).
calcular(Dado,Resultado):- Resultado is Dado*Dado.
mostrar(Resultado):- write('o quadrado é: '), write(Resultado).