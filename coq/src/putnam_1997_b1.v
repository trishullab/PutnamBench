Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1997_b1_solution (n: nat) := INR n.
Theorem putnam_1997_b1
    (rnd : R -> R := fun x => Rmin (Rabs (IZR (floor x) - x)) (Rabs (IZR (floor (x + 1)) - x)))
    : forall (n: nat), gt n 0 -> sum_n (fun m => Rmin (rnd ((INR m + 1) / (6 * INR n))) (rnd ((INR m + 1) / (3 * INR n)))) (6 * n - 1) = putnam_1997_b1_solution n.
Proof. Admitted.
