benchee_erlang
=====

An escript trying to use benchee from Erlang. partly working.

```
tobi@speedy ~/github/benchee_erlang $ rebar3 shell
===> Verifying dependencies...
===> Upgrading benchee ({elixir,"benchee","0.8.0"})
Dependency benchee already exists

Running dependency resolution...
All dependencies up to date
===> App bunt is no longer needed and can be deleted.
===> App credo is no longer needed and can be deleted.
===> App deep_merge is no longer needed and can be deleted.
===> App dialyxir is no longer needed and can be deleted.
===> App earmark is no longer needed and can be deleted.
===> App ex_doc is no longer needed and can be deleted.
===> App fs is no longer needed and can be deleted.
===> App mix_test_watch is no longer needed and can be deleted.
===> Compiling benchee_erlang
===> Adding Elixir Libs
Erlang/OTP 19 [erts-8.1] [source] [64-bit] [smp:8:8] [async-threads:0] [hipe] [kernel-poll:false]

Eshell V8.1  (abort with ^G)
1> 'Elixir.Benchee':run(#{<<"My Function">> => fun() -> lists:sort([8, 2, 3, 4, 2, 1, 3, 4, 9, 10, 11, 12, 13, 20, 1000, -4, -5]) end}).
Elixir 1.3.4
Erlang 19.1
Benchmark suite executing with the following configuration:
warmup: 2.00 s
time: 5.00 s
parallel: 1
inputs: none specified
Estimated total run time: 7.00 s


Benchmarking My Function...

Name                  ips        average  deviation         median
My Function      441.63 K        2.26 μs   ±597.54%        2.00 μs
#{'__struct__' => 'Elixir.Benchee.Suite',
  configuration => #{'__struct__' => 'Elixir.Benchee.Configuration',
    assigns => #{},
    formatter_options => #{console => #{comparison => true,unit_scaling => best}},
    formatters => [#Fun<Elixir.Benchee.Formatters.Console.output.1>],
    inputs => nil,
    parallel => 1,
    print => #{benchmarking => true,configuration => true,fast_warning => true},
    time => 5000000,
    warmup => 2000000},
  jobs => #{<<"My Function">> => #Fun<erl_eval.20.52032458>},
  run_times => #{'__no_input' => #{<<"My Function">> => [11,6,2,3,2,3,2,3,5,3,2,3,2,3,2,3,2,3,2,3,2,3,2|...]}},
  statistics => #{'__no_input' => #{<<"My Function">> => #{'__struct__' => 'Elixir.Benchee.Statistics',
        average => 2.26433025882949,
        ips => 441631.6904747518,
        maximum => 9304,
        median => 2.0,
        minimum => 2,
        sample_size => 1673766,
        std_dev => 13.530378246071793,
        std_dev_ips => 2638945.35449277,
        std_dev_ratio => 5.975443817575494}}},
  system => #{elixir => <<"1.3.4">>,erlang => <<"19.1">>}}

```


Build
-----

    $ rebar3 escriptize

Run
---

    $ _build/default/bin/benchee_erlang
