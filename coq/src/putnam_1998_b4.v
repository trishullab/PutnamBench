Require Import Nat ZArith Reals Coquelicot.Coquelicot.
Definition putnam_1998_b4_solution (m n: nat) := exists (m2 n2: nat), m mod (2 ^ m2) = 0%nat /\ m mod (2 ^ (m2 + 1)) <> 0%nat /\ n mod (2 ^ n2) = 0%nat /\ n mod (2 ^ n2 + 1) <> 0%nat.
Theorem putnam_1998_b4
    : forall (m n: nat), sum_n (fun i =>  Rpower (-1) (IZR (floor (INR i / INR m)) + IZR (floor (INR i / INR n)))) (m * n - 1) = 0 <-> putnam_1998_b4_solution m n.
Proof. Admitted.
