Require Import Reals Coquelicot.Derive.
Open Scope R_scope.
Theorem putnam_2018_a5
    (f: R -> R)
    (h0 : f 0 = 0)
    (h1 : f 1 = 1)
    (hpos : forall x : R, f x >= 0)
    (hf : forall x : R, forall n : nat, ex_derive_n f n x)
    : exists (n : nat) (x : R), gt n 0 /\ Derive_n f n x < 0.
Proof. Admitted.
