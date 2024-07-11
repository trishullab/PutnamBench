Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2019_b2_solution := 8 / PI ^ 3.
Theorem putnam_2019_b2 
    (a : nat -> R := fun n => sum_n_m (fun k => let k := INR k in let n := INR n in (sin (2 * (k + 1) * PI / (2 * n))) / ((cos ((k - 1) * PI / (2 * n))) ^ 2 * (cos ((k * PI) / (2 * n))) ^ 2)) 1 (n - 1))
    : Lim_seq (fun n => a n / INR n ^ 3) = putnam_2019_b2_solution.
Proof. Admitted.
