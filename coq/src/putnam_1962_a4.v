Require Import Reals Coquelicot.Derive Coquelicot.Coquelicot.
Theorem putnam_1962_a4
    (f : R -> R)
    (a b : R)
    (hfdiff : forall x : R, ex_derive_n f 1 x /\ ex_derive_n f 2 x)
    (hfabs : forall x : R, (a <= x /\ x <= b) -> abs (f x) <= 1)
    (hfppabs : forall x : R, (a <= x /\ x <= b) -> abs (Derive_n f 2 x) <= 1)
    (hlen : b - a >= 2)
    : forall x : R, (a <= x /\ x <= b) -> abs (Derive f x) <= 2.
Proof. Admitted.
