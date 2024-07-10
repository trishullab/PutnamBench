Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1981_b1_solution := -1.
Theorem putnam_1981_b1
    : Lim_seq (fun n => 1/(pow (INR n) 5) * (sum_n (fun r => (sum_n (fun s => 5 * pow (INR r) 4 - 18  * pow (INR r) 2 * pow (INR s) 2 + 5 * pow (INR s) 4) n)) n)) = putnam_1981_b1_solution.
Proof. Admitted.
