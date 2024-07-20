Require Import Nat Reals ZArith Znumtheory Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1983_a3
    (f : nat -> nat -> R := fun n p => sum_n (fun i => INR ((i+1) * n^i)) (p-1))
    : forall (p m n: nat), odd p = true /\ prime (Z.of_nat p) /\ (floor (f m p)) mod Z.of_nat p = (floor (f n p)) mod Z.of_nat p -> Z.of_nat m mod Z.of_nat p = Z.of_nat n mod Z.of_nat p.
Proof. Admitted.
