From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences topology normedtype trigo.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1969_b3
    (T : nat -> R)
    (hT1 : forall n : nat, ge n 1 -> (T n) * (T (n.+1)) = n%:R)
    (hT2 : (fun n => (T n)/(T n.+1)) @ \oo --> 1)
    : pi * (T 1%nat) ^+ 2 = 2.
Proof. Admitted.