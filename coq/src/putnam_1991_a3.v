From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype sequences topology derive.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1991_a3_solution : set {poly R} := [set P : {poly R} | size P = 3%nat /\ (exists r1 r2 : R, r1 <> r2 /\ P.[r1] = 0 /\ P.[r2] = 0)].
Theorem putnam_1991_a3
    (P : {poly R})
    (n : nat)
    (hn : n = (size P).-1)
    (hge : ge n 2)
    : P \in putnam_1991_a3_solution <->
        (exists (r: nat -> R), (forall i : nat, lt i (n - 1) -> r i < r (i.+1)) /\
            (forall i : nat, lt i n -> P.[r i] = 0) /\
            (forall i : nat, lt i (n.-1) -> (P^`()).[(r i + r i.+1) / 2] = 0)).
Proof. Admitted.