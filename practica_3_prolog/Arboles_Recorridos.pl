arco(4,1).
arco(1,0).
arco(1,3).
arco(3,2).
arco(4,6).
arco(6,5).
arco(6,8).
arco(8,7).
arco(8,9).


test(S):-
    arco(X,Y),
    S = (X,Y).

recorridodfs(Inicio,Solucion):-
   recorrido(Inicio,[],Solucion).

recorrido(Inicio,_,[Inicio]).


recorrido(Inicio,Camino,Solucion):-
    arco(Inicio,Sucesor),
    not(member(Sucesor,Camino)),
    recorrido(Sucesor,[Inicio|Camino],Solucion).



