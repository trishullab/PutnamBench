From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_2018_a3_solution : R := 480/49.
Theorem putnam_2018_a3
    (cos_sum : R -> seq R -> R := fun k s => \prod_(x <- s) cos (k * x))
    : (exists (s : seq R), size s = 10%nat /\ cos_sum 1 s = 0 /\ putnam_2018_a3_solution = cos_sum 3 s) /\
    (forall (s : seq R), size s = 10%nat -> cos_sum 1 s = 0 -> putnam_2018_a3_solution >= cos_sum 3 s).
Proof. Admitted.