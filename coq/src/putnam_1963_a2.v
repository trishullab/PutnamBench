Require Import Nat.
Theorem putnam_1963_a2
    (f : nat -> nat)
    (hfpos : forall n : nat, gt (f n) 0)
    (hfinc : forall i j : nat, gt i 0 -> gt j i -> gt (f j) (f i))
    (hf2 : f 2 = 2)
    (hfmn : forall m n : nat, gt m 0 -> gt n 0 -> gcd m n = 1 -> f (m * n) = f m * f n)
    : (forall (n : nat), n > 0 -> f n = n).
Proof. Admitted.