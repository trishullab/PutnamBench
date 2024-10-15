From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences topology normedtype.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_2011_a2_solution : R := 3/2.
Theorem putnam_2011_a2
    (a b : R ^nat)
    (habn : forall n : nat, a n > 0 /\ b n > 0)
    (hab1 : a 0%nat = 1 /\ b 0%nat = 1)
    (hb : forall n : nat, ge n 1 -> b n = b (n.-1) * a n - 2)
    (hbnd : exists B : R, forall n : nat, `|b n| <= B)
    : (fun n : nat => \sum_(1 <= i < n.+1) 1/(\prod_(1 <= j < i.+1) (a j))) @ \oo --> putnam_2011_a2_solution.
Proof. Admitted.