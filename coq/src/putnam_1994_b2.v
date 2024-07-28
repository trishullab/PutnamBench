Require Import Ensembles Reals Finite_sets Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1994_b2_solution (c: R) := c < 243 / 8.
Theorem putnam_1994_b2
    (hintersect : R -> Prop := fun c => exists(m b: R), cardinal R (fun x => m * x + b = pow x 4 + 9 * pow x 3 + c * pow x 2 + 9 * x + 4) 4)
    : forall (c: R), hintersect c <-> putnam_1994_b2_solution c.
Proof. Admitted.
