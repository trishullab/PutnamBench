Require Import Reals Coquelicot.Derive.
Open Scope R_scope.
Theorem putnam_1999_b4
    (f: R -> R)
    : continuity (Derive_n f 3) -> forall (x: R), f x > 0 /\ (Derive_n f 1) x > 0 /\ (Derive_n f 2) x > 0 /\ (Derive_n f 3) x > 0 -> forall (x: R), (Derive_n f 3) x <= f x -> forall (x: R), (Derive_n f 1) x < 2 * f x.
Proof. Admitted.
