Require Import Nat Reals Coquelicot.Coquelicot ZArith.
Theorem putnam_1997_b4
    (a : nat -> nat -> Z)
    (max_degree : nat -> nat)
    (coeff : nat -> (nat -> R))
    (hpoly : forall (m : nat) (x : R), sum_n (fun i => (coeff m i) * (x^i)) (max_degree m) = (1 + x + x^2)^m)
    (ha : forall n m : nat, IZR (a n m) = coeff m n)
    : forall k : nat, ge k 0 -> 0 <= (sum_n (fun i => (-1)^i * (IZR (a (Nat.sub k i) i))) (Z.to_nat (Coquelicot.Rcomplements.floor (2 * INR k / 3)))) <= 1.
Proof. Admitted.
