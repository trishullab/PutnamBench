Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2008_a4_solution := False.
Theorem putnam_2008_a4
    (f : R -> R)
    (hf : forall (x : R), f x = (if (Rle_dec x (exp 1)) then x else x * f (ln x)))
    : ex_lim_seq (fun nInc => sum_n_m (fun n => 1 / f (INR n)) 1 nInc) <-> putnam_2008_a4_solution.
Proof. Admitted.
