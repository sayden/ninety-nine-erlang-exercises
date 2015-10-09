%%%-------------------------------------------------------------------
%%% @author Mario Castro
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. Oct 2015 9:24 AM
%%%-------------------------------------------------------------------
-module(utils).
-author("Mario Castro").

%% API
-export([head/1, tail/1]).

head([Head|_]) -> Head.

tail([_|Tail]) -> Tail.

