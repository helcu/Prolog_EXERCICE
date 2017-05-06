es_esposo_de(sabino,rosalia).
es_esposo_de(david,flor).
es_esposo_de(rene,nelith).


es_padre_de(sabino,david).
es_padre_de(sabino,rene).
es_padre_de(sabino,hernan).

es_padre_de(david,angie).
es_padre_de(rene,marcelo).


%motor de inferencia

esposasmenosdelaguien(Esposas,Alguien):-
    es_esposo_de(Esp,Esposas),
    Esp \= Alguien.
