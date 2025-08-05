From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_2017_a2
    (Q : nat -> {poly R})
    (hQbase : Q 0%nat = 1%:P /\ Q 1%nat = 'X)
    (hQn : forall n : nat, Q (n.+2) * Q n = Q (n.+1) ^+ 2 - 1%:P)
    (n : nat) (hn : lt 0 n) : 
    exists P : {poly int}, Q n = map_poly intr P.
Proof. Admitted.