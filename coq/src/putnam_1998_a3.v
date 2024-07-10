Require Import Reals Coquelicot.Derive.
Open Scope R.
Theorem putnam_1998_a3
    (f: R -> R)
    : continuity (Derive_n f 3) -> exists (a: R), (Derive_n f 0) a * (Derive_n f 1) a * (Derive_n f 2) a * (Derive_n f 3) a >= 0.
Proof. Admitted.
