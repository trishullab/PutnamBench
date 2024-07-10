Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1966_b6
    (y : R -> R)
    (hy : (forall x : R, ex_derive y x) /\ (forall x : R, ex_derive (Derive y) x))
    (diffeq : forall x : R, Derive_n y 2 x + y x * exp x = 0)
    : exists r s N : R, forall x : R, x > N -> r <= y x <= s.
Proof. Admitted.
