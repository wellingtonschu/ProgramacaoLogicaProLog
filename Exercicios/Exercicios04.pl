familia(pessoa(ari,pla,data(17,05,65),trab(ibn,1500)),
        pessoa(ana,pla,data(06,11,68),trab(rbs,1100)),
       [pessoa(ada,pla,data(18,02,91),nt)]).

%2
familia(pessoa(juca,tijuca,data(23,11,70),nt),
        pessoa(marieta,tijuca,data(14,04,73),trab(governo,15000)),
       [pessoa(jujuba,tijuca,data(12,05,93),nt),
        pessoa(juju,tijuca,data(26,10,04),nt)]).

familia(pessoa(zevelho,difer,data(25,03,23),trab(aposentado,32000)),
        pessoa(nonova,difer,data(29,07,82),nt),[]).

%01
%a
pai(X) :- familia(X,_,_).

%b
mae(X) :- familia(_,X,_).

%c
filho(X) :- familia(_,_,Filhos),
	   membro(X,Filhos).

membro(X,[X|_]).
membro(X,[_|Y]) :- membro(X,Y).

%d
existe(X) :- pai(X);mae(X);filho(X).

%e
nasceu(pessoa(_,_,Data,_),Data).

%f
salario(pessoa(_,_,_,trab(_,S)),S).
salario(pessoa(_,_,_,nt),0).

% a) Todos os que trabalham
%	familia(pessoa(X,_,_,trab(_,_)),_,_);familia(_,pessoa(Y,_,_,trab(_,_)),_);fa%mil%ia(_,_,pessoa(Z,_,_,trab(_,_))).
%
% b) As famílias em que o pai está desempregado
%	familia(pessoa(X,_,_,nt),_,_).
%
% c) Todos os filhos nascidos em 1993
%	familia(_,_,[pessoa(X,_,data(_,_,93),_)|_]).
%
% d) Os filhos cujos pais possuem uma diferença superior a 15 anos
%	