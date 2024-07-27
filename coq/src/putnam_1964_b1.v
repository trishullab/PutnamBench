Section putnam_1964_b1.
Require Import Reals Ensembles ZArith Finite_sets. From Coquelicot Require Import Hierarchy Lim_seq Rbar.
Theorem putnam_1964_b1
    (a : nat -> Z)
    (apos : forall n : nat, Z.gt (a n) 0)
    (ha : ex_lim_seq (fun N => sum_n (fun n => 1 / IZR (a n)) N))
    (b : nat -> nat)
    (hb : forall n : nat, cardinal nat (fun k : nat => Z.le (a k) (Z.of_nat n)) (b n))
    : is_lim_seq (fun n => INR (b n) / INR n) 0.
Proof. Admitted.
End putnam_1964_b1.