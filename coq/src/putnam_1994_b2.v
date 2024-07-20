Require Import List Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1994_b2_solution (c: R) := c < 243 / 8.
Theorem putnam_1994_b2
    (f : R -> R -> R := fun c x => pow x 4 + 9 * pow x 3 + c * pow x 2 + 9 * x + 4)
    (g : R -> R -> R -> R := fun m x b  => m * x + b)
    (hintersect : R -> Prop := fun c => exists(m b: R), exists (l: list R), eq (length l) 4%nat /\ NoDup l /\ forall (r: R), In r l -> f c r = g m b r)
    : forall (c: R), hintersect c <-> putnam_1994_b2_solution c.
Proof. Admitted.
