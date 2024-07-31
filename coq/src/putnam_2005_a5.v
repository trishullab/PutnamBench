Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2005_a5_solution := PI * ln 2 / 8.
Theorem putnam_2005_a5
    : RInt (fun x => ln (x + 1) / (x ^ 2 + 1)) 0 1 = putnam_2005_a5_solution.
Proof. Admitted.
