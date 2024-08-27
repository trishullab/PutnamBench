From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals topology sequences derive normedtype realfun real_interval.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Import numFieldNormedType.Exports.

Variable R : realType.
Definition putnam_1979_a2_solution : set R := [set x : R | x >= 0].
Theorem putnam_1979_a2
    : forall k : R, (exists f : R -> R, continuous f /\ (forall x : R, f (f x) = k * x ^+ 9)) <-> k \in putnam_1979_a2_solution.
Proof. Admitted.