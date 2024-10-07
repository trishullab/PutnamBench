From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope nat_scope.

Theorem putnam_1963_a2
    (f : nat -> nat)
    (hfpos : forall n : nat, 0 < f n)
    (hfinc : forall i j : nat, 0 < i -> i < j -> f i < f j)
    (hf2 : f 2 = 2)
    (hfmn : forall m n : nat, 0 < m -> 0 < n -> coprime m n -> f (m * n) = f m * f n)
    : forall n : nat, 0 < n -> f n = n.
Proof. Admitted.