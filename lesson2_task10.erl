-module(lesson2_task10).
-export([encode/1]).

encode(L) -> encode(L,1,[]).

encode([],_,Acc) -> reverse(Acc);
encode([H,H|T],N,Acc) -> encode([H|T], N+1, Acc);
encode([H|T],N,Acc) -> encode(T,1,[{N,H}|Acc]).

reverse(A) -> reverse(A,[]).
reverse([],Acc) -> Acc;
reverse([H|T],Acc) -> reverse(T,[H|Acc]).