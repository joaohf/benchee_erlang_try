%% -*- erlang -*-
%%! -smp enable -sname benchee_erlang
-module(benchee_erlang).
-mode(compile).

%% API exports
-export([main/1]).

%%====================================================================
%% API functions
%%====================================================================

%% escript Entry point
main(_Args) ->
    'Elixir.Benchee':run(#{<<"My Function">> => fun() -> lists:sort([8, 2, 3, 4, 2, 1, 3, 4, 9, 10, 11, 12, 13, 20, 1000, -4, -5]) end}),
    erlang:halt(0).

%%====================================================================
%% Internal functions
%%====================================================================
