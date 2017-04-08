lista1:-
    Numeros=[1,2,3,4,5,6,7,8,9],
    writef('elementos de la lista son: %w',[Numeros]).

lista2:-
    Nombres=[helmut,pepe,lusho],
    writef('elementos de la lista son: %w',[Nombres]).
lista3:-
    Nombres=[[helmut,pepe,lusho],a,d,e,4],
    writef('elementos de la lista son: %w',[Nombres]).

lista4(Numeros,Nombres):-
    writef('la lista es: %w',[Numeros]),
    writef('la lista es: %w',[Nombres]).

lista5(Lnumeros,Lnombre,Numeros,Nombre):-
    Numeros = Lnumeros,
    Lnombre = Nombre.
lista6:-
    Lista= [2,3,4,5],
    [Cabeza|Cola]= Lista,
    writef('la cabeza es: %w',[Cabeza]), nl,
    writef('la cola es: %w',[Cola]).

lista7(Lista):-
    [Cabeza|Cola]= Lista,
    writef('la cabeza es: %w',[Cabeza]), nl,
    writef('la cola es: %w',[Cola]).
lista8(Var,Lista):-
    [Cabeza|Cola]= Lista,
    Var = Cabeza.
lista10(Lista):-
    [H|Q] = Lista,
    writef('la cbeza es : %w', [H]),
    [HH|QQ]= Q,
    writef('la cbeza  de la cola es : %w', [HH]),
    writef('la cola de la cola  : %w', [QQ]).


lista11(Elem,1,[Elem|_]).
lista11(Elem,N,[_|Cola]):-
    N1 is N-1,
    lista11(Elem,N1,Cola).

lista12(Elem,[Elem|_]).

lista12(Elem,[_|Cola]):-
    lista12(Elem,Cola).


