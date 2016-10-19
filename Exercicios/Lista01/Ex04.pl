%Base de dados
ligacaodireta(lages,rio_do_sul).
ligacaodireta(lages,florianopolis).
ligacaodireta(rio_do_sul,alfledo_wagner).
ligacaodireta(rio_do_sul,blumenau).
ligacaodireta(alfredo_wagner,florianopolis).
ligacaodireta(blumenau,itajai).
ligacaodireta(itajai,florianopolis).

%A
existe_ligacao(X,Y):-ligacaodireta(X,Y),write(X),write(' ligado diretamente a '),write(Y).
existe_ligacao(X,Y):-ligacaodireta(X,A),existe_ligacao(A,Y),write(X),write(' ligado indiretamente a '),write(Y).