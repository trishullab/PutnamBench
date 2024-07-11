Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1990_b2 
    (x z : R)
    (hxz : Rabs x < 1 /\ Rabs z > 1)
    (P : nat -> R := fun j => (sum_n (fun i => 1 - z * x ^ i) j) / (sum_n (fun i => z - x ^ i) j+1))
    : 1 + Series (fun j => 1 + x ^ (j+1) * P j) = 0.
Proof. Admitted.
