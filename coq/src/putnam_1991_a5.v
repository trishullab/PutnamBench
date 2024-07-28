Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1991_a5_solution := 1/3.
Theorem putnam_1991_a5
    (f : R -> R := fun y : R => RInt (fun x => sqrt (pow x 4 + pow (y - pow y 2) 2)) 0 y)
    : (exists (y : R), 0 <= y <= 1 /\ putnam_1991_a5_solution = f y) /\ (forall (y : R), 0 <= y <= 1 -> putnam_1991_a5_solution >= f y).
Proof. Admitted.
