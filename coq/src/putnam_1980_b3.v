From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import sequences reals.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope classical_set_scope.
Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_1980_b3_solution : set R := [set x : R | x >= 3].
Theorem putnam_1980_b3
    (a : R)
    (u : R ^nat)
    (hu : u 0%nat = a /\ (forall n : nat , u n.+1 = 2 * u n - ((n%:R) ^ 2)))
    : (forall n : nat, u n > 0) <-> a \in putnam_1980_b3_solution.
Proof. Admitted.
