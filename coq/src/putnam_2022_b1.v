From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals derive normedtype sequences topology exp.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_2022_b1
    (n : nat)
    (P : {poly R})
    (B : R ^nat)
    (npos : ge n 1)
    (Pconst : P`_(0%nat) = 0)
    (Pdegreee : size P = n.+1)
    (Pint : forall k : nat, ge k 1 /\ le k n -> exists c : int, (P`_k = c%:~R /\ (k = 1%nat -> (c %% 2)%Z = 1)))
    (hB : forall x : R, (fun n : nat => \sum_(0 <= k < n) (B k * x^k)) @ \oo --> expR (P.[x]))
    : forall k : nat, B k <> 0.
Proof. Admitted.