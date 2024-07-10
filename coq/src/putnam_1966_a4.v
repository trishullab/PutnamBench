Require Import Nat List ZArith Reals Coquelicot.Coquelicot.
Theorem putnam_1966_a4
    (a : nat -> Z)
    (ha1 : a (S 0) = 2%Z)
    (ha2 : forall n : nat, ge n 1 -> a (S n) = (if (existsb (fun m => Z.eqb (a n + 1) (m * m)) (map Z.of_nat (seq 0 (Z.to_nat (Z.abs (a n) + 1))))) then (Z.add (a n) 2) else Z.add (a n) 1))
    : forall n : nat, ge n 1 -> a n = Z.add (Z.of_nat n) (floor (sqrt (INR n) + 0.5)).
Proof. Admitted.
