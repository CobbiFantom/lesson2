-module(lesson2_task09).
-export([pack/1]).

pack(L) -> pack(L, []).
pack([], _) -> [];
pack([H,H|T],Acc) -> pack([H | T], [H |Acc]);
pack([H|T],Acc) -> [[H |Acc]|pack(T,[])].