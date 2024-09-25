From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1968_a5_solution : R := 8.
Theorem putnam_1968_a5
    (V : set {poly R} := [set P : {poly R} | size P = 3%nat /\ forall x : R, 0 <= x <= 1 -> `|P.[x]| <= 1])
    : (exists P : {poly R}, P \in V /\ `|P^`().[0]| = putnam_1968_a5_solution) /\ 
      (forall P : {poly R}, P \in V -> `|P^`().[0]| <= putnam_1968_a5_solution).
Proof. Admitted.