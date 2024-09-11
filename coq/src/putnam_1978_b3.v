From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals topology sequences normedtype.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.
Import numFieldNormedType.Exports.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1978_b4
    (P : nat -> {poly R})
    (hP1 : P 1%nat = 1%:P + 'X)
    (hP2 : P 2%nat = 1%:P + 2 * 'X)
    (hPodd : forall n : nat, ge n 1 -> P ((n.*2).+1) = P (n.*2) + (n.+1)%:R * 'X * P ((n.*2).-1))
    (hPeven : forall n : nat, ge n 1 -> P ((n.+1).*2) = P ((n.*2).+1) + (n.+1)%:R * 'X * P (n.*2))
    (a : nat -> R)
    (haroot : forall n : nat, ge n 1 -> (P n).[a n] = 0)
    (haub : forall n : nat, ge n 1 -> (forall x : R, (P n).[x] = 0 -> x <= a n))
    : (forall i j : nat, ge i 1 -> lt i j -> a i < a j) /\ (a @ \oo --> 0).
Proof. Admitted.