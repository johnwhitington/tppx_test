OCAMLFIND_IGNORE_DUPS_IN = $(shell ocamlfind query compiler-libs)
export OCAMLFIND_IGNORE_DUPS_IN

SOURCES = tppx_test.ml

PACKS = compiler-libs.common

RESULT = tppx_test

OCAMLNCFLAGS = -g -w -3
OCAMLBCFLAGS = -g -w -3
OCAMLLDFLAGS = -g

all : native-code

install :
	ocamlfind install tppx_test META tppx_test

clean ::
	rm -rf doc a.out *.o *.cmx *.cmi *.cmo

-include OCamlMakefile

