From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_1977_a2_solution : R -> R -> R -> R -> Prop := fun a b c d => (c = -a /\ d = b) \/ (c = -b /\ d = a).
Theorem putnam_1977_a2
    : forall a b c d : R, a <> 0 -> b <> 0 -> c <> 0 -> d <> 0 -> ((a + b + c = d /\ 1 / a + 1/b + 1/c = 1/d) <-> putnam_1977_a2_solution a b c d).
Proof. Admitted.