Require Import Reals.
Open Scope Z.
Theorem putnam_1998_b6
    : forall (a b c: Z), exists (n: Z), n > 0 -> forall (m : Z), n * n * n + a * n * n + b * n + c <> m * m.
Proof. Admitted.
