From mathcomp Require Import all_ssreflect all_algebra fintype.
From mathcomp Require Import reals normedtype topology sequences.
From mathcomp Require Import classical_sets cardinality.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Variable R : realType.
Theorem putnam_1967_a2
    (S : nat -> nat)
    (hS0 : S 0%nat = 1%nat)
    (hSn : forall n : nat, ge n 1 -> [set : 'I_(S n)] #= [set A : 'M[int]_n |  A = A^T /\ (forall j, \sum_(i < n) (A i j) = 1) /\ (forall i j, A i j >= 0)])
    : (forall n : nat, ge n 1 -> S (n.+1) = Nat.add (S n) (n * S (n.-1))) /\
      (forall x : R, series (fun n : nat => (S n)%:~R * (x ^+ n) / (n`!)%:~R) @ \oo --> expR (x + (x ^+ 2) / 2)).
Proof. Admitted.