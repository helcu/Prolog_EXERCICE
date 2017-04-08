arco(8,3).
arco(3,1).
arco(3,6).
arco(6,4).
arco(6,7).
arco(8,10).
arco(10,14).
arco(14,13).


test(S):-
    arco(X,Y),
    S = (X,Y).

inicio(8).
objetivo(13).
recorridodfs(Solucion):-
    inicio(Inicio),
    busqueda(Inicio,[],Solucion).

busqueda(Inicio,Camino,[Inicio|Camino]):-
    objetivo(Inicio).
busqueda(Inicio,Camino,Solucion):-
    arco(Inicio,Sucesor),
    busqueda(Sucesor,[Inicio|Camino],Solucion).