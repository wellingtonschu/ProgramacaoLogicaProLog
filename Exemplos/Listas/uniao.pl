uniao([],Bs,Bs).
uniao([A|As],Bs,[A|AsBs]):-
    uniao(As,Bs,AsBs).