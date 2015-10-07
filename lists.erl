%%%-------------------------------------------------------------------
%%% @author Mario Castro
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Oct 2015 9:22 AM
%%%-------------------------------------------------------------------
-module(lists).
-author("mariocaster").

%% API
-export([myLast/1]).


myLast(l) when l == [] -> [].
myLast(l) when l == [a] -> a.
myLast([l:list]) -> myLast(list).