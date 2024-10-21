From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope ring_scope.

Variable R : realType.
Definition putnam_1985_a6_solution : {poly R} := 6 * 'X ^ 2 + 5 * 'X + 1.
Theorem putnam_1985_a6
    (Gamma : {poly R} -> R := fun p => \sum_(i <- p) (i ^+ 2))
    (f : {poly R} := 3 * 'X ^ 2 + 7 * 'X + 2)
    : let g := putnam_1985_a6_solution in
      g.[0] = 1 /\ forall n : nat, ge n 1 -> Gamma (f ^ n) = Gamma (g ^ n).
Proof. Admitted.