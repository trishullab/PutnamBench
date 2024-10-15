From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences normedtype topology.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.

Theorem putnam_1990_b2
    (x z : R)
    (P : nat -> R)
    (xlt1 : `| x | < 1)
    (zgt1 : `| z | > 1)
    (hP : forall j : nat, ge j 1 -> P j = (\prod_(0 <= i < j) (1 - z * x ^ i)) / (\prod_(1 <= i < j.+1) (z - x ^ i)))
    : (fun n : nat => 1 + \sum_(1 <= j < n) ((1 + x ^ j) * P j)) @ \oo --> 0.
Proof. Admitted.