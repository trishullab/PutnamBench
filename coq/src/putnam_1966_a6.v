From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype topology sequences.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1966_a6
    (a : nat -> (nat -> R))
    (ha : forall n : nat, ge n 1 ->
        a n n = n%:R /\ (forall m : nat, ge m 1 -> lt m n -> a n m = m%:R * (@Num.sqrt R (1 + a n (S m)))))
    : (fun n => a n 1%nat) @ \oo --> 3.
Proof. Admitted.