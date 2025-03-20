lastmem([L], L).
lastmem([_|T], L):- lastmem(T, L).

%lastmem([1,2,3,4],L) -> L=4