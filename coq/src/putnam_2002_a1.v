From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype sequences topology derive.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_2002_a1_solution : nat -> nat -> R := fun k n : nat => (-k%:R) ^ n * n`!%:R.
Theorem putnam_2002_a1
    (k : nat)
    (P : nat -> {poly R})
    (kpos : gt k 0)
    (Pderiv : forall n : nat, forall x : R, derive1n n (fun x' : R => 1/(x' ^ k - 1)) x = (P n).[x] / ((x ^ k - 1) ^ (n.+1)))
    : forall n : nat, (P n).[1] = putnam_2002_a1_solution k n.
Proof. Admitted.