Require Import Binomial Reals Znumtheory Coquelicot.Coquelicot. From mathcomp Require Import div.
Open Scope R.
Theorem putnam_1996_a5 
    (p: nat)
    (hp : prime (Z.of_nat p) /\ gt p 3)
    (k := floor (2 * INR p / 3))
    : exists (m: nat), sum_n (fun i => Binomial.C p (i+1)) (Z.to_nat k) = INR m * pow (INR p) 2.
Proof. Admitted.
