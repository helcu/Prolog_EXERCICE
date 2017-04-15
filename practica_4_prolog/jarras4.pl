meta([_,2]).

operacion([Salida], [J3,_], [J3,0]):-
	atom_concat("vcr4,",J3,Aux),
	atom_concat(Aux,0,Salida). 
operacion([Salida], [_,J4], [0,J4]):-
	atom_concat("vcr3,",0,Aux),
	atom_concat(Aux,J4,Salida).
operacion([Salida], [J3,_], [J3,4]):-
	atom_concat("llr4,",J3,Aux),
	atom_concat(Aux,4,Salida).
operacion([Salida], [_,J4], [3,J4]):-
	atom_concat("llr3,",3,Aux),
	atom_concat(Aux,J4,Salida). 

operacion([Salida], [J3,J4], [NJ3,0]):- 
	Cantidad is 3-J3,
	Cantidad >= J4,
	NJ3 is J3+J4,
	atom_concat("vrt4a3,",NJ3,Aux),atom_concat(Aux,0,Salida).

operacion([Salida], [J3,J4], [3,NJ4]):- 
	Cantidad is 3-J3,
	Cantidad < J4,
	NJ4 is J4-Cantidad,
	atom_concat("vrt4a3,",3,Aux),atom_concat(Aux,NJ4,Salida).

operacion([Salida], [J3,J4], [0,NJ4]):- 
	Cantidad is 4-J4,
	Cantidad >= J3,
	NJ4 is J3+J4,
	atom_concat("vrt3a4,",0,Aux),atom_concat(Aux,NJ4,Salida).

operacion([Salida], [J3,J4], [NJ3,4]):- 
	Cantidad is 4-J4,
	Cantidad < J3,
	NJ3 is J3-Cantidad,
	atom_concat("vrt3a4,",NJ3,Aux),atom_concat(Aux,4,Salida).

solucion(EstadoInicial,X):- 
	buscar_solucion(EstadoInicial, X, [EstadoInicial]).
  
buscar_solucion(EstadoInicial, [X], L):-
	meta(EstadoInicial),
	X = EstadoInicial.

buscar_solucion(EstadoInicial, [X|RX], L):-
	operacion(X, EstadoInicial, EstadoNuevo),
	not(member(EstadoNuevo, L)), 
	buscar_solucion(EstadoNuevo, RX, [EstadoNuevo|L]).

