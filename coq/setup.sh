#!/bin/bash

opam switch create PutnamBench 5.1.1
opam repo add coq-released https://coq.inria.fr/opam/released
eval $(opam env --switch=PutnamBench --set-switch)
opam pin add -y coq 8.18.0
opam install coq-lsp --yes
opam install -y coq-mathcomp-ssreflect
opam install -y coq-stdpp
opam install -y coq-coqtail
opam install coq-mathcomp-analysis
opam install coq-mathcomp-classical
opam install coq-mathcomp-real-closed
opam install coq-geocoq-coinc --yes
opam install coq-geocoq-axioms --yes
opam install coq-geocoq-elements --yes
opam install coq-geocoq-main --yes
opam install coq-geocoq-algebraic --yes
opam install coq-geocoq --yes
opam install -y coq-coquelicot.3.3.1