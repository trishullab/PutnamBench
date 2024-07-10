Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2000_a4
    : ex_lim_seq (fun n => sum_n (fun x => sin (INR x) * sin ((INR x) ^ 2)) n).
Proof. Admitted.
