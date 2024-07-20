Require Import Reals.
Open Scope R.
Definition putnam_1977_a2_solution (a b c d: R) := c = -a /\ d = b.
Theorem putnam_1977_a2
    (p : R -> R -> R -> R -> Prop := fun a b c d => a + b + c = d /\ 1/a + 1/b + 1/c = 1/d)
    : forall (a b c d: R), p a b c d <-> putnam_1977_a2_solution a b c d.
Proof. Admitted.
