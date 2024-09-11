From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1978_b5_solution : {poly R} := (4%:P) * 'X^4 - 4%:P * 'X^2 + 1%:P.
Theorem putnam_1978_b5
    (S : set {poly R} := [set p : {poly R} | size p = 5%nat /\ (forall x : R, -1 <= x <= 1 -> 0 <= p.[x] <= 1)])
    : putnam_1978_b5_solution \in S /\ (forall p : {poly R}, p \in S -> (p`_4) <= (putnam_1978_b5_solution`_4)).
Proof. Admitted.