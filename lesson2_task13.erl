-module(lesson2_task13).
-export([decode/1]).

decode(L) -> decode(L,[]).

decode([],Acc) -> reverse(Acc);
decode([{N,Term}|T],Acc) when N >= 1 -> decode([{N-1,Term}|T],[Term|Acc]);
decode([{0,_}|T],Acc) -> decode(T,Acc).


reverse(A) -> reverse(A,[]).
reverse([],Acc) -> Acc;
reverse([H|T],Acc) -> reverse(T,[H|Acc]).