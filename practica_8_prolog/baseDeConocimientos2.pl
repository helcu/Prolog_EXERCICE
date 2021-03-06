:- dynamic ingred/2.
:- dynamic es_un_tipo_de/2.
:- dynamic bueno_contra/2.
:- dynamic en_exceso_provoca/2.


%INGREDIENTES
ingred(tomate, ensalada).
ingred(limon, ensalada).
ingred(pollo, aguadito).
ingred(arvejas, aguadito).
ingred(zapallo, picante).
ingred(cebolla, picante).
ingred(maracuya, helado).
ingred(saborizante, helado).
ingred(aguardiente, calientito).
ingred(te, calientito).

%TIPO DE ALIMENTOS
es_un_tipo_de(ensalada, entrada).
es_un_tipo_de(aguadito, sopa).
es_un_tipo_de(picante, platofondo).
es_un_tipo_de(helado, postre).
es_un_tipo_de(calientito, bebida).

%RECOMENDADO PARA
bueno_contra(tomate, caries).
bueno_contra(limon, gripe).
bueno_contra(cebolla, gripe).
bueno_contra(zanahoria, ceguera).
bueno_contra(te, stress).
bueno_contra(maracuya, stress).

%EXCESO
en_exceso_provoca(huevo, colesterol).
en_exceso_provoca(platano, diabetes).
en_exceso_provoca(carne, artritis).
en_exceso_provoca(aceite, colesterol).
en_exceso_provoca(saborizantes, diabetes).
en_exceso_provoca(azucar, diabetes).
en_exceso_provoca(limon, gostritis).
en_exceso_provoca(cebolla, acidez).

tengo_quecomer(Enfermedad,Tipo,Porcion):-
    bueno_contra(Base,Enfermedad),
    ingred(Base,Porcion),
    es_un_tipo_de(Porcion,Tipo),
    en_exceso_provoca(Base,Provoca),
    write('su alimento es en baswe a : '),write(Base),
    write('-->su alimento en eceso provoca :'),write(Provoca).


quitar_recomendacion(Alimento,Sintoma):-
    retract(bueno_contra(Alimento,Sintoma)).

agregar_recomendacion(Base,Tipo,Porcion,Enfermedad):-
    assert(bueno_contra(Base,Enfermedad)),
    assert(ingred(Base,Porcion)),
    assert(es_un_tipo_de(Porcion,Tipo)).




