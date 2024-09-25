From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences normedtype topology.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1964_b5
    (a b : nat -> nat)
    (ha : increasing_seq a /\ (forall n : nat, lt 0 (a n)))
    (hb : b 0%nat = a 0%nat /\ forall n : nat, b n.+1 = lcmn (b n) (a (n.+1)))
    (f : nat -> R := fun N => \sum_(0 <= n < N) 1/((b n)%:R))
    : exists L : R, f @ \oo --> L.
Proof. Admitted.
