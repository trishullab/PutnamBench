Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2017_b4_solution := (ln 2 / ln 10) ^ 2.
Theorem putnam_2017_b4
    : Lim_seq (fun n => sum_n (fun k => let k := INR k in (3 * ln (4 * k + 2) / (4 * k + 2) - ln (4 * k + 3) / (4 * k + 3) - ln (4 * k + 4) / (4 * k + 4) - ln (4 * k + 5) / (4 * k + 5))) n) = putnam_2017_b4_solution .
Proof. Admitted.
