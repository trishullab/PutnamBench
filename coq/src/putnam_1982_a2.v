Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1982_a2_solution := True.
Theorem putnam_1982_a2
    (B : nat -> R -> R := fun n x => sum_n (fun m => Rpower (INR m) x) n)
    (f : nat -> R := fun n => B n (ln 2 / ln (INR n)) / ((INR n) * Rpower (ln 2 / ln (INR n)) 2))
    : ex_series (fun n => if (lt_dec n 2) then 0 else f n) <-> putnam_1982_a2_solution.
Proof. Admitted.
