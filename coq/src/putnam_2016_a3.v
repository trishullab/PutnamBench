Require Import Reals Coquelicot.RInt Coquelicot.Hierarchy.
Definition putnam_2016_a3_solution :=  3 * PI / 8.
Theorem putnam_2016_a3
    (f: R -> R)
    (hf : forall x : R, x <> 0 -> f x + f (1 - 1/x) = atan x)
    : RInt f 0 1 = putnam_2016_a3_solution.
Proof. Admitted.
