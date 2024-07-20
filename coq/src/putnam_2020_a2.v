Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2020_a2_solution := fun k => 4 ^ k.
Theorem putnam_2020_a2  
    : (fun k => sum_n (fun j => 2 ^ (k - j) * Binomial.C (k + j) j) k) = putnam_2020_a2_solution.
Proof. Admitted.
