Require Import Reals Coquelicot.Derive.
Open Scope R_scope.
Theorem putnam_2018_a5
    (n : nat)
    (f: R -> R)
    (x: R)
    : (ex_derive_n f n x) -> f 0 = 0 /\ f 1 = 1 /\ (forall x, f x > 0) -> exists (n: nat) (x: R), gt n 0 -> ((Derive_n f n) x > 0).
Proof. Admitted.
