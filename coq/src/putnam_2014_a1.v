Require Import Reals Factorial Znumtheory Coquelicot.Derive.
Theorem putnam_2014_a1
    : forall (n: nat), exists a b: Z, b <> 0%Z /\ (Derive_n (fun x => (1 - x + x^2) * exp x) n) 0 / INR (fact n) = IZR a / IZR b /\ (a = 1%Z /\ prime a) /\ Zis_gcd a b 1.
Proof. Admitted.
