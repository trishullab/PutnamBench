Require Import Reals Factorial Znumtheory Coquelicot.Derive.
Theorem putnam_2014_a1
    (f : R -> R := fun x => (1 - x + x^2) * (exp x))
    (hf : forall x : R, forall n : nat, ex_derive_n f n x)
    (coeff : nat -> R := fun i => Derive_n f i 0 / INR (fact i))
    (n : nat)
    (hcoeff : coeff n <> 0)
    : exists a b: Z, b <> 0%Z /\ coeff n = IZR a / IZR b /\ Zis_gcd a b 1 /\ (a = 1%Z \/ prime a).
Proof. Admitted.
