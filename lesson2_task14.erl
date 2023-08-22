-module(lesson2_task14).
-export([duplicate/1]).

duplicate(L) -> duplicate(L,[]).

duplicate([],Acc) -> reverse(Acc);
duplicate([H|T], Acc) -> duplicate(T,[H,H|Acc]).


reverse(A) -> reverse(A,[]).
reverse([],Acc) -> Acc;
reverse([H|T],Acc) -> reverse(T,[H|Acc]).