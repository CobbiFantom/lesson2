-module(lesson2_task15).
-export([replicate/2]).

replicate(L,N) -> reverse(replicate(L,N,[])).

replicate([],_,Acc) -> Acc;
replicate([H|T],N,Acc)  -> replicate(T, N, [dup(H,N)|Acc]).


dup(L,N) -> dup(L,N,[]).

dup(_,0,Acc) -> Acc;
dup(L,N,Acc) -> dup(L, N-1, [L|Acc]).

reverse(L) -> reverse(L,[]).

reverse([],Acc) -> Acc;
reverse([H|T],Acc) -> reverse(T,[H|Acc]).