%%%-------------------------------------------------------------------
%%% @author Mario Castro
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Oct 2015 9:22 AM
%%%-------------------------------------------------------------------
-module(nnlists).
-author("mariocaster").

%% API
-export([last/1, butLast/1, elementAt/2, length/1, reverse/1, isPalindrome/1, flatten/1, compress/1, pack/1]).

%% 1 - Find the last element of a list
%% Last([1,2,3,4,5]) -> 5
last([]) -> [];
last([L]) -> L;
last([_|List]) -> last(List).

%% 2 - Find the last but one element of a list.
%% ButLast([1,2,3,4,5]) -> 4
butLast([A,_]) -> A;
butLast([_|List]) -> butLast(List).

%% 3 -  Find the K'th element of a list. The first element in the list is number 1:
%% elementAt(2,[5,4,3,2,1]) -> 4
elementAt(1, [L|_]) -> L;
elementAt(N, [_|List]) -> elementAt(N-1,List).

%% 4 - Find the number of elements of a list.
length([]) -> 0;
length([_|List]) -> 1 + nnlists:length(List).

%% 5 - Reverse a list
reverse([]) -> [];
reverse([H|List]) -> lists:append(reverse(List),[H]).

%% 6 - Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
isPalindrome(List) -> List == reverse(List).

%% 7 - Flatten a nested list structure.
flatten([]) -> [];
flatten([[H|List]|List2]) -> flatten(H) ++ flatten(List) ++ flatten(List2);
flatten([H|List]) -> flatten(H) ++ flatten(List);
flatten(A) -> [A].

%% 8 - Eliminate consecutive duplicates of list elements
compress([]) -> [];
compress([F|List]) -> [F] ++ compress(lists:dropwhile(fun(X) -> X == F end, List)).

%% 9 - Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements
%% they should be placed in separate sublists.
pack([]) -> [];
pack([A|List]) -> [[A] ++ lists:takewhile(fun(X) -> A == X end, List)] ++ pack(lists:dropwhile(fun(X) -> A == X end, List)).

%% 10 - Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length
%% encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N
%% is the number of duplicates of the element E.
