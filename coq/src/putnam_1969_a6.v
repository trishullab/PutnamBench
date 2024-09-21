From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences topology normedtype.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1969_a6
    (x : nat -> R)
    (y : nat -> R)
    (hy1 : forall n : nat, ge n 2 -> y n = x (Nat.sub n 1) + 2 * (x n))
    (hy2 : exists c : R, y @ \oo --> c)
    : exists C : R, x @ \oo --> C.
Proof. Admitted.