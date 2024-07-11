Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2021_a4_solution := (sqrt 2 / 2) * PI * ln 2 / ln 10.
Theorem putnam_2021_a4 
    (I : nat -> R := fun r => RInt (fun x => RInt (fun y => (1 + 2 * x ^ 2) / (1 + x ^ 4 + 6 * x ^ 2 * y ^ 2 + y ^ 4) - (1 + y ^ 2) / (2  + x ^ 4 + y ^ 4)) 0 (sqrt (INR r ^ 2 - x ^ 2))) 0 r)
    : Lim_seq I = putnam_2021_a4_solution.
Proof. Admitted.
