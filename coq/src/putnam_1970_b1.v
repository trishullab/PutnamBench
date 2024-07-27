Section putnam_1970_b1.
Require Import Reals. From Coquelicot Require Import Hierarchy.
Open Scope R.
Definition putnam_1970_b1_solution := exp (2 * ln 5 - 4 + 2 * atan 2).
Theorem putnam_1970_b1
    (f : nat -> nat -> R)
    (hbc : forall n : nat, f n O = 1)
    (hi : forall n i : nat, f n (Nat.add i 1) = (f n i) * Rpower ((INR n)^2 + (INR (i + 1))^2) (1/(INR n)))
    (g : nat -> R := fun n : nat => 1/((INR n)^4) * f (Nat.mul 2 n) (Nat.mul 2 n))
    : filterlim g eventually (locally putnam_1970_b1_solution).
Proof. Admitted.
End putnam_1970_b1.
