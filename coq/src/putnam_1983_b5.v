Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1983_b5_solution := ln (4/PI).
Theorem putnam_1983_b5
    (mindist : R -> R := fun x => Rmin (Rabs (x - IZR (floor x))) (Rabs (x - IZR (floor (x+1)))))
    : Lim_seq (fun n => 1/(INR n) * (RInt (fun x => mindist (INR n/x)) 1 (INR n))) = putnam_1983_b5_solution.
Proof. Admitted.
