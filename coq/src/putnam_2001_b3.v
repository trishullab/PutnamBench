Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2001_b3_solution := 3.
Theorem putnam_2001_b3
    (n: nat)
    (hn : ge n 0)
    (closest : nat -> R := fun n => let n := INR n in Rmin ((n - sqrt n) - IZR (floor (n - sqrt n))) (IZR (floor (n + 1 - sqrt n)) - (n - sqrt n)))
    : Series (fun n => sum_n (fun n => (Rpower 2 (closest n) + Rpower 2 (- closest n)) / (2 ^ n)) n) = putnam_2001_b3_solution.
Proof. Admitted.
