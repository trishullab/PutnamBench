Require Import Reals Factorial Coquelicot.Series Coquelicot.Hierarchy.
Open Scope R.
Theorem putnam_1972_b1
    (S : R -> R := fun x => Series (fun n : nat => x^n * (x - 1)^(2*n) / INR (fact n)))
    (p : nat -> R)
    (hp : exists a : R, a > 0 /\ forall x : R, ball 0 a x -> Series (fun n : nat => (p n) * x^n) = S x)
    : (~exists n : nat, p n = 0 /\ p (n + 1)%nat = 0 /\ p (n + 2)%nat = 0).
Proof. Admitted.