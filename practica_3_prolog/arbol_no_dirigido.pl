
arco(4,1).
arco(1,0).
arco(1,3).
arco(3,2).
arco(4,6).
arco(6,5).
arco(6,8).
arco(8,7).
arco(8,9).

arco(1,4).
arco(0,1).
arco(3,1).
arco(2,3).
arco(6,4).
arco(5,6).
arco(8,6).
arco(7,8).
arco(9,8).





busquedabfs(Inicio,Solucion):-
    busqueda([Inicio],[],Solucion).
busqueda([NInicio|_],_,[NInicio]).
busqueda([NInicio|RestQ],Hist,Solucion):-
    findall(Sucesor,
            (   arco(NInicio,Sucesor),not(member(Sucesor,Hist)),not(member(Sucesor,RestQ))),Sucesores),
    append(RestQ,Sucesores,Camino),
    busqueda(Camino,[NInicio|Hist],Solucion).

