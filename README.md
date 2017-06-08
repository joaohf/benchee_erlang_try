benchee_erlang
=====

An escript trying to use benchee from Erlang. partly working, as in the escript doesn't work (issues are filed) but it works in a shell and should work with a release/in a normal project. It uses [rebar3_elixir_compile](https://github.com/barrel-db/rebar3_elixir_compile).

I've had problems with old dependencies still sticking around with this, what then helped was `rm -r` on `_elixir_build` and `_build` and then doing another `rebar3 update`, `rebar3 upgrade` adn then `rebar3 shell`.

```
tobi@comfy ~/github/benchee_erlang_try $ rebar3 shell
===> Verifying dependencies...
===> Upgrading benchee ({elixir,"benchee","0.9.0"})
Dependency benchee already exists

Running dependency resolution...
Dependency resolution completed:
  bunt 0.2.0
  certifi 1.2.1
  credo 0.8.1
  deep_merge 0.1.1
  dialyxir 0.5.0
  earmark 1.2.2
  ex_doc 0.16.1
  excoveralls 0.6.5
  exjsx 4.0.0
  fs 2.12.0
  hackney 1.8.5
  idna 5.0.2
  inch_ex 0.5.6
  jsx 2.8.2
  metrics 1.0.1
  mimerl 1.0.2
  mix_test_watch 0.4.0
  poison 3.1.0
  ssl_verify_fun 1.1.1
  unicode_util_compat 0.2.0
All dependencies up to date
===> Upgrading deep_merge ({elixir,"deep_merge","0.1.1"})
===> Compiling benchee_erlang
===> Adding Elixir Libs
Erlang/OTP 18 [erts-7.3] [source] [64-bit] [smp:4:4] [async-threads:0] [hipe] [kernel-poll:false]

Eshell V7.3  (abort with ^G)
1> benchee:run(#{myFunc => fun() -> lists:sort([8, 2, 3, 4, 2, 1, 3, 4, 9, 10, 11, 12, 13, 20, 1000, -4, -5]) end}, [{warmup, 0}, {time, 2}]).
Operating System: Linux
CPU Information: Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz
Number of Available Cores: 4
Available memory: 8.05344 GB
Elixir 1.3.4
Erlang 18.3
Benchmark suite executing with the following configuration:
warmup: 0.0 μs
time: 2.00 s
parallel: 1
inputs: none specified
Estimated total run time: 2.00 s


Benchmarking myFunc...

Name             ips        average  deviation         median
myFunc      289.71 K        3.45 μs   ±250.31%        3.00 μs
#{'__struct__' => 'Elixir.Benchee.Suite',
  configuration => #{'__struct__' => 'Elixir.Benchee.Configuration',
    assigns => #{},
    formatter_options => #{console => #{comparison => true,unit_scaling => best}},
    formatters => [#Fun<Elixir.Benchee.Formatters.Console.output.1>],
    inputs => nil,
    parallel => 1,
    print => #{benchmarking => true,configuration => true,fast_warning => true},
    time => 2000000,
    warmup => 0},
  jobs => #{<<"myFunc">> => #Fun<erl_eval.20.50752066>},
  run_times => #{'__no_input' => #{<<"myFunc">> => [23,7,5,5,4,5,4,4,5,4,3,4,3,4,4,3,6,4,3,4,3,4,4|...]}},
  statistics => #{'__no_input' => #{<<"myFunc">> => #{'__struct__' => 'Elixir.Benchee.Statistics',
        average => 3.451688546908079,
        ips => 289713.27696867974,
        maximum => 2936,
        median => 3.0,
        minimum => 3,
        sample_size => 500223,
        std_dev => 8.639837960818141,
        std_dev_ips => 725174.2832791796,
        std_dev_ratio => 2.5030757681070193}}},
  system => #{available_memory => <<"8.05344 GB">>,
    cpu_speed => <<"Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz">>,
    elixir => <<"1.3.4">>,
    erlang => <<"18.3">>,
    num_cores => 4,
    os => 'Linux'}}

```


Build
-----

    $ rebar3 escriptize

Run
---

    $ _build/default/bin/benchee_erlang
