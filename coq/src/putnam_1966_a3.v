From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals topology normedtype.
From mathcomp Require Import classical_sets.
Import numFieldTopology.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1966_a3
    (x : nat -> R)
    (hx1 : 0 < x 1%nat /\ x 1%nat < 1)
    (hxi : forall n : nat, ge n 1 -> x (n.+1) = x n * (1 - x n))
    : (fun n : nat => n%:R * x n) @ \oo --> 1.
Proof. Admitted.