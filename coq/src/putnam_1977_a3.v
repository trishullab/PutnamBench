From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_1977_a3_solution : (R -> R) -> (R -> R) -> (R -> R) := fun f g x => g x - f (x - 3) + f (x - 1) + f (x + 1) - f (x + 3).
Theorem putnam_1977_a3
    (f g h : R -> R)
    (hf : forall x, f x = (h (x + 1) + h (x - 1)) / 2)
    (hg : forall x, g x = (h (x + 4) + h (x - 4)) / 2)
    : h = putnam_1977_a3_solution f g.
Proof. Admitted.
