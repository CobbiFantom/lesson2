-module(lesson2_task06).
-export([palindrome/1]).

palindrome(A) -> A == reverse(A).

reverse(A) -> reverse(A,[]).

reverse([],Acc) -> Acc;
reverse([H|T],Acc) -> reverse(T,[H|Acc]).