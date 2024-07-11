Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1991_a5_solution := 1/3.
Theorem putnam_1991_a5
    (m: R)
    (hm : exists (y: R), 0 <= y <= 1 -> m >= RInt (fun x => sqrt (pow x 4 + pow (y - pow y 2) 2)) 0 y)
    (hmub : forall (y: R), 0 <= y <= 1 -> m >= RInt (fun x => sqrt (pow x 4 + pow (y - pow y 2) 2)) 0 y)
    : m = putnam_1991_a5_solution.
Proof. Admitted.
