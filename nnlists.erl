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
-export([last/1, butLast/1, elementAt/2, length/1, reverse/1, isPalindrome/1]).

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
flatten([_]) -> [];
flatten()