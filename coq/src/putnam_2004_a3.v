Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2004_a3
    (u : nat -> R)
    (hubase : u O = 1 /\ u (S O) = 1 /\ u (S (S O)) = 1)
    (hudet : forall n : nat, u n * u (Nat.add n 3) - u (Nat.add n 1) * u (Nat.add n 2) = INR (fact n))
    : forall n : nat, exists m : Z, u n = IZR m.
Proof. Admitted.
