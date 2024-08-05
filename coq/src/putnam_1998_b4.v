Require Import Nat ZArith Reals Coquelicot.Coquelicot.
Definition putnam_1998_b4_solution : nat -> nat -> Prop := (fun m n : nat => forall m2 n2 : nat, (m mod (2 ^ m2) = 0%nat /\ m mod (2 ^ (m2 + 1)) <> 0%nat /\ n mod (2 ^ n2) = 0%nat /\ n mod (2 ^ n2 + 1) <> 0%nat) -> m2 <> n2).
Theorem putnam_1998_b4
    (hsum : nat -> nat -> R := (fun m n : nat => sum_n (fun i =>  Rpower (-1) (IZR (floor (INR i / INR m)) + IZR (floor (INR i / INR n)))) (m * n - 1)))
    : forall (m n: nat), (gt m 0 /\ gt n 0) -> (hsum m n = 0 <-> putnam_1998_b4_solution m n).
Proof. Admitted.
