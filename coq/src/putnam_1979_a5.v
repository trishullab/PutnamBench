Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1979_a5 
    (f : R -> R := fun x => Rpower x 3 - 10 * pow x 2 + 29 * x - 25)
    : exists (r1 r2: R), r1 <> r2 /\ f r1 = 0 /\ f r2 = 0 /\
    ~ exists (r: R), forall (n: nat), exists (p q: Z), n = Z.to_nat (floor (IZR p * r1)) /\ n = Z.to_nat (floor (IZR q * r2)) /\ INR n < r. 
Proof. Admitted.
