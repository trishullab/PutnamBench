Require Import Nat Reals ZArith Znumtheory Binomial Coquelicot.Coquelicot.
Theorem putnam_1991_b4
    (p: nat)
    (hp : odd p = true /\ prime (Z.of_nat p)) 
    (expr : R := sum_n (fun j => Binomial.C p j * Binomial.C (p + j) j) p)
    : (floor expr) mod (Z.pow (Z.of_nat p) 2) = Z.add (Z.pow 2 (Z.of_nat p)) 1.
Proof. Admitted.
