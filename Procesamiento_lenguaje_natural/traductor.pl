%ingles
sentence(s(S,V,O)) --> nom_p(S,N), verb(V,N), nom_p(0,_).
nom_p(np(M,S),N) --> modifier(M),noun(S,N).
modifier(m(art)) --> [the].
noun(n(n_1),sg) --> [stone].
noun(n(n_3),pl) --> [gifts].
verb(v(v_1),sg) --> [cuts].
verb(v(v_2),sg) --> [wraps].
verb(v(v_3),sg) --> [breaks].
verb(v(v_1),pl) --> [cut].
verb(v(v_1),pl) --> [wrap].
verb(v(v_1),pl) --> [break].
%español
oracion(s(S,V,O)) --> sint_n(S,N), verbo
sint_n(np(M,S),N) --> articulo(M,G,N), nombre(S,G,N).
articulo(m(art),f,sg) -->
