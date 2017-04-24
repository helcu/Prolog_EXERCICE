%ALGORTIMOGENETICO

cruzar(L1,L2,Punto,Hijo1,Hijo2):-
    dividir(L1,X1,Y1),
    dividir(L2,X2,Y2),
    length(X1,M1),
    length(X2,M2),
    M1 =:= Punto,
    M2 =:= Punto,
    append(X1,Y2,Hijo1),
    append(X2,Y1,Hijo2).

puntocruce(L1,Punto):-
    length(L1,N),
    random(1,N,Punto).

genetic(L1,L2,H1,H2):-
    puntocruce(L1,P),
    cruzar(L1,L2,P,Hijo1,Hijo2).

dividir([],[],[]).
dividir([X|Xs],[X|Ys],Zs):-
    dividir(Xs,Ys,Zs).
dividir([X|Xs],Ys,[X|Zs]):-
    dividir(Xs,Ys,Zs).
