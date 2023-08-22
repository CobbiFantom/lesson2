-module(lesson2_task08).
-export([compress/1]).

compress(L) -> compress(L,[]).

compress([],Acc) -> reverse(Acc);
compress([H,H|T],Acc) -> compress([H|T],Acc);
compress([H|T],Acc) -> compress(T,[H|Acc]).


reverse(A) -> reverse(A,[]).
reverse([],Acc) -> Acc;
reverse([H|T],Acc) -> reverse(T,[H|Acc]).
