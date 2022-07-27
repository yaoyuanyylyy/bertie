all:
	test -d deps || rebar3 get-deps
	rebar3 compile
	@erl -noshell -pa './deps/bitcask/ebin' -pa '_build/default/lib/bertie/ebin' -s bertie start