From mathcomp Require Import ssrnat ssrnum ssralg fintype poly polydiv.
Open Scope ring_scope.
Theorem putnam_2014_a5
    (R: numDomainType)
    (j k : nat)
    (pj : {poly R}:= \sum_(i < j.+1) ((i%:R + 1) *: 'X^i))
    (pk : {poly R} := \sum_(i < k.+1) ((i%:R + 1) *: 'X^i))
    : j <> k -> gcdp_rec pj pk = 1.
Proof. Admitted.
