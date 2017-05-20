es_esposo_de(sabino,rosalia).
es_esposo_de(david,flor).
es_esposo_de(rene,nelith).


es_padre_de(sabino,david).
es_padre_de(sabino,rene).
es_padre_de(sabino,hernan).

es_padre_de(david,angie).
es_padre_de(rene,marcelo).


%motor de inferencia

esposas(Esposas):-
    es_esposo_de(_,Esposas).
%---------------------------    
esposos(Esposos):-
    es_esposo_de(Esposos,_).
%---------------------------    
esposasmenosdelaguien(Esposas,Alguien):-
    es_esposo_de(Esp,Esposas),
    Esp \= Alguien.
%---------------------------    
hijos_madres(Madres,Hijos):-
    es_padre_de(Esposos,Hijos),
	es_esposo_de(Esposos,Madres).
%---------------------------        
descendientes(Padre,Madre,Descendientes):-
	es_esposo_de(Padre,Madre),
	es_padre_de(Padre,Descendientes).
 %---------------------------       
es_tio_de(Tio,Sobrino):-
    es_padre_de(Abuelo,Padre),
    es_padre_de(Abuelo,Tio),
    es_padre_de(Padre,Sobrino),
    Padre \= Tio.
%---------------------------        
es_abuelo_de(Abuelo,Nieto):-
    es_padre_de(Padre,Nieto),
    es_padre_de(Abuelo,Padre).
%---------------------------    
es_suegro_de(Suegro,Nuera):-
    es_padre_de(Suegro,Hijo),
    es_esposo_de(Hijo,Nuera).
    
 


