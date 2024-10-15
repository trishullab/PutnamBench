From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype sequences topology.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1981_a1_solution : R := 1 / 8.
Theorem putnam_1981_a1
    (P : nat -> nat -> Prop := fun n k => (5 ^ k %| (\prod_( 1<= i < n+1) (i%:Z ^+ i)))%Z)
    (E : nat -> nat)
    (hE : forall n : nat, ge n 1 -> P n (E n) /\ forall k : nat, P n k -> le k (E n))
    : (fun n : nat => (E n)%:R / (n%:R ^ 2)) @ \oo --> putnam_1981_a1_solution.
Proof. Admitted.
