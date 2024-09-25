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
Theorem putnam_1970_a4
    (x : nat -> R)
    (hxlim : (fun n : nat => x n - x (Nat.sub n 2)) @ \oo --> 0)
    : (fun n : nat => (x n - x (Nat.sub n 1)) / n%:R) @ \oo --> 0.
Proof. Admitted.
