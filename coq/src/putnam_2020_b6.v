Require Import Reals. From Coquelicot Require Import Coquelicot Hierarchy Rcomplements. 
Open Scope R.
Theorem putnam_2020_b6 
    (A : nat -> R := fun k => (-1)^(Z.to_nat (floor (INR k * (sqrt 2 - 1)))))
    (B : nat -> R := fun n => sum_n_m A 1 n)
    : forall (n: nat), B n >= 0.
Proof. Admitted. 