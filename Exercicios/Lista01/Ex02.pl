%Base de dados
%Cidade
cidade(sao_mateus,pequena).
cidade(vitoria,media).
cidade(sao_paulo,grande).
cidade(maceio,media).
cidade(campos,pequena).
cidade(cariacica,pequena).
cidade(colatina,pequena).
cidade(porto_alegre,grande).
cidade(sao_mateus,pequena).
cidade(santos,media).
cidade(colatina,pequena).
cidade(cariacica,pequena).
cidade(manaus,grande).
cidade(boa_vista,pequena).
cidade(macapa,media).
cidade(belem,media).
cidade(palmas,media).
cidade(porto_velho,grande).
cidade(rio_branco,pequena).
cidade(sao_luiz,pequena).
cidade(teresina,media).
cidade(fortaleza,grande).
cidade(natal,grande).
cidade(recife,grande).
cidade(joao_pessoa,media).
cidade(aracaju,pequena).
cidade(maceio,grande).
cidade(salvador,grande).
cidade(cuiaba,media).
cidade(campo_grande,pequena).
cidade(goiania,media).
cidade(sao_paulo,grande).
cidade(rio_de_janeiro,grande).
cidade(vitoria,media).
cidade(belo_horizonte,grande).
cidade(curitiba,grande).
cidade(porto_alegre,grande).
cidade(florianopolis,media).
cidade(rio_do_sul,media).
cidade(ituporanga,pequena).
cidade(blumenau,media).
cidade(taio,pequena).
cidade(guaruja,media).
cidade(joinville,grande).
cidade(lontras,pequena).

%Capital
%Norte
capital(manaus).
capital(boa_vista).
capital(macapa).
capital(belem).
capital(palmas).
capital(porto_velho).
capital(rio_branco).

%Nordeste
capital(sao_luiz).
capital(teresina).
capital(fortaleza).
capital(natal).
capital(recife).
capital(joao_pessoa).
capital(aracaju).
capital(maceio).
capital(salvador).

%Centro-oeste
capital(cuiaba).
capital(campo_grande).
capital(goiania).

%Sudeste
capital(sao_paulo).
capital(rio_de_janeiro).
capital(vitoria).
capital(belo_horizonte).

%Sul
capital(curitiba).
capital(porto_alegre).
capital(florianopolis).

%Estados
estado(ac,norte).
estado(al,nordeste).
estado(ap,norte).
estado(am,norte).
estado(ba,nordeste).
estado(ce,nordeste).
estado(df,centro_oeste).
estado(es,sudeste).
estado(go,centro_oeste).
estado(ma,nordeste).
estado(mt,centro_oeste).
estado(ms,centro_oeste).
estado(mg,sudeste).
estado(pa,norte).
estado(pb,nordeste).
estado(pr,sul).
estado(pe,nordeste).
estado(pi,nordeste).
estado(rj,sudeste).
estado(rn,nordeste).
estado(rs,sul).
estado(ro,norte).
estado(rr,norte).
estado(sc,sul).
estado(sp,sudeste).
estado(se,nordeste).
estado(to,norte).

%Pertence
pertence(sao_mateus,es).
pertence(santos,sp).
pertence(colatina,es).
pertence(cariacica,es).
pertence(manaus,am).
pertence(boa_vista,rr).
pertence(macapa,ap).
pertence(belem,pa).
pertence(palmas,to).
pertence(porto_velho,ro).
pertence(rio_branco,ac).
pertence(sao_luiz,ma).
pertence(teresina,pi).
pertence(fortaleza,ce).
pertence(natal,rn).
pertence(recife,pe).
pertence(joao_pessoa,pb).
pertence(aracaju,se).
pertence(maceio,al).
pertence(salvador,ba).
pertence(cuiaba,mt).
pertence(campo_grande,ms).
pertence(goiania,go).
pertence(sao_paulo,sp).
pertence(rio_de_janeiro,rj).
pertence(vitoria,es).
pertence(belo_horizonte,mg).
pertence(curitiba,pr).
pertence(porto_alegre,rs).
pertence(florianopolis,sc).
pertence(rio_do_sul,sc).
pertence(pouso_redondo,sc).
pertence(blumenau,sc).
pertence(taio,sc).
pertence(guaruja,sp).
pertence(joinville,sc).
pertence(lontras,sc).
pertence(ituporanga,sc)

%Questoes
%E
cidade_pequena(X) :- cidade(X,pequena).

%F
estado_na_regiao_norte(X) :- estado(X,norte),write(' pertence ao norte.').

%G
capital_regiao_sul(X):- capital(X),pertence(X,Y),estado(Y,sul).

%H
cidade_pequena_regiao_sudeste(X):- cidade(X,pequena),pertence(X,Y),estado(Y,sudeste).

%I
estado_com_capital_grande(X) :-	pertence(Y,X),capital(Y),cidade(Y,grande).

%J
estado_regiao_nordeste_com_capital_media(X) :- estado(X,nordeste),pertence(Y,X),capital(Y),cidade(Y,media).

%K
cidade_pequena_do_estado(X,Y):- cidade(X,pequena),pertence(X,Y).