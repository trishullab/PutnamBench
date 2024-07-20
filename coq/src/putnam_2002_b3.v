Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_2002_b3 
    : forall (n: nat), ge n 1 -> let n := INR n in 1 / (2 * n * exp 1) < 1 / (exp 1) - Rpower (1 - 1 / n) n < 1 / (n * (exp 1)).
Proof. Admitted.
