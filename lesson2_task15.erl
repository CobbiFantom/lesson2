-module(lesson2_task15).
-export([replicate/2]).

replicate(L,N) -> replicate(L,N,N).
replicate([_|T],N,0) -> replicate(T,N,N);
replicate([H|T],Num,N) -> [H|replicate([H|T], Num, N-1)];
replicate([],_,_) -> [].