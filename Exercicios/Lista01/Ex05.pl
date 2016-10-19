%Base de dados
%Partidas
%Voo
voo_partida(tp123).
voo_partida(n1234).
voo_partida(tp876).
voo_partida(n1498).

%Destino
destino_partida(tp123,sao_paulo).
destino_partida(n1234,curitiba).
destino_partida(tp876,porto_alegre).
destino_partida(n1498,rio_de_janeiro).

%Hora prevista
hora_prev_partida(tp123,1430).
hora_prev_partida(n1234,1525).
hora_prev_partida(tp876,1418).
hora_prev_partida(n1498,1500).

%Hora real
hora_real_partida(tp123,1430).
hora_real_partida(n1234,1600).
hora_real_partida(tp876,1430).
hora_real_partida(n1498,1500).

%Chegadas
%Voo
voo_chegada(tp123).
voo_chegada(n1533).
voo_chegada(tp877).
voo_chegada(n1498).

%Destino
destino_chegada(tp123,sao_paulo).
destino_chegada(n1234,campinas).
destino_chegada(tp876,belo_horizonte).
destino_chegada(n1498,rio_de_janeiro).

%Hora prevista
hora_prev_chegada(tp123,1400).
hora_prev_chegada(n1234,1500).
hora_prev_chegada(tp876,1430).
hora_prev_chegada(n1498,1600).

%Hora real
hora_real_chegada(tp123,1435).
hora_real_chegada(n1234,1500).
hora_real_chegada(tp876,1500).
hora_real_chegada(n1498,1550).

%A
parteAHoras(X) :- hora_prev_partida(X,Y),hora_real_partida(X,Y).
parteAHoras(X) :- hora_prev_chegada(X,Y),hora_real_chegada(X,Y).

%B
vaivem(X) :- voo_partida(X),voo_chegada(X),destino_partida(X,Y),destino_chegada(X,Y).

%C
ligacao(X,Y) :- voo_chegada(X),voo_partida(Y),X\==Y.

%D
chegaAtrasado(X) :- hora_real_chegada(X,Y), hora_prev_chegada(X,A), Y>A.

%E
emConflito(X) :- hora_real_partida(X,Y), hora_real_chegada(X,A), Y<A.
