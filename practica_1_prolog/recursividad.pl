% PROGRAmA FACTORIAL
factorial(1,1).
factorial(N,RESP):-
    N>1,
    N1 is N-1,
    factorial(N1,RESP1),
    RESP is N*RESP1.


