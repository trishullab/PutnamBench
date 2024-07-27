Section putnam_1969_b3.
Require Import Reals. From Coquelicot Require Import Hierarchy.
Open Scope R.
Theorem putnam_1969_b3
    (T : nat -> R)
    (hT1 : forall n : nat, ge n 1 -> (T n) * (T (Nat.add n 1)) = INR n)
    (hT2 : filterlim (fun n => (T n)/(T (Nat.add n 1))) eventually (locally 1))
    : PI * (T (S O))^2 = 2.
Proof. Admitted.
End putnam_1969_b3.
