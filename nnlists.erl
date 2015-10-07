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
-export([myLast/1, myButLast/1, elementAt/2]).

%% 1 - Find the last element of a list
%% myLast([1,2,3,4,5]) -> 5
myLast([]) -> [];
myLast([L]) -> L;
myLast([_|List]) -> myLast(List).

%% 2 - Find the last but one element of a list.
%% myButLast([1,2,3,4,5]) -> 4
myButLast([A,_]) -> A;
myButLast([_|List]) -> myButLast(List).

%% 3 -  Find the K'th element of a list. The first element in the list is number 1:
%% elementAt(2,[5,4,3,2,1]) -> 4
elementAt(1, [L|_]) -> L;
elementAt(N, [_|List]) -> elementAt(N-1,List).

%% 4 - Find the number of elements of a list.
%% myLength([5,4,3,2,1]) -> 5
