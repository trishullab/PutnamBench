(* Require Import Reals Factorial Coquelicot.Coquelicot.
Definition putnam_2002_a1_solution (k n: nat) := Rpower (-1 * INR k) (INR n) * INR (fact n).
Theorem putnam_2002_a1
    (k : nat)
    (p : (nat -> R) -> R -> nat -> R := fun a x n => sum_n (fun i => a i * x ^ i) n)
    (kpos : gt k 0)
    : forall (N: nat), forall (a: nat -> R) (n: nat),
    (forall (x: R), (Derive_n (fun x => 1 / (x ^ k - 1)) N) x = (p a x n) / (x ^ k - 1) ^ (n + 1)) ->
    p a 1 n = putnam_2002_a1_solution k n.
Proof. Admitted. *)

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