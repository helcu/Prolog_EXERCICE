hola:-
    write("Hola don lusho").
escribir1:-
    write(6).
escribir4:-
    A is 88,
    write("el numero es:"),
    nl,
    write(A).
suma(X,Y):-
    Resp is X+Y,
    write(Resp).
suma(X,Y,R):-
    R is X+Y.
leerdato1:-
    write("Ingrese un numero: "),
    read(Num1),
    write("Ingrese un numero: "),
    read(Num2),
    R is Num1+Num2,
    write(R).
leerdato2:-
    write("Escriba opcion s/n"),
    read(Resp),
    ((Resp == 's' ) ->
    write("has raspondido afirmativamente");
    (Resp == 'n' ) ->
    write("has raspondido negativamente");
    write("has raspondido otra cosa")).
maximo(A,B,Z):-
    Z is max(A,B).

entre1(X,Y):-
    between(X,Y,K),
    write(K),
    !.
consecutivoA(X,Y):-
    succ(X,Y).
quienesmayor(X,Y):-
    X > Y,
    write(X),
    write("es mayor").
quienesmayor(X,Y):-
    Y > X,
    write(Y),
    write("es mayor").
quienesmayor(X,Y):-
    X == Y,
    write(X),
    write(Y),
    write("son iguales").
quienesmayor(X,Y):-
    X =\= Y,
    write(X),
    write(Y),
    write("son iguales").
