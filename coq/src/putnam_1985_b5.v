Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1985_b5_solution := sqrt (PI / 1985) * exp (-3970).
Theorem putnam_1985_b5
    : Lim_seq (fun n => RInt (fun x => Rpower x (-1/2) * exp (-1985 * (x + 1/x))) 0 (INR n)) = putnam_1985_b5_solution.
Proof. Admitted.
