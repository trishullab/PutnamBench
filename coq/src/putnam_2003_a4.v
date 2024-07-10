Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2003_a4
    (a b c A B C: R)
    (ha : a <> 0)
    (hA :A <> 0)
    (hp : forall (x: R), Rabs (a * x ^ 2 + b * x + c) <= Rabs (A * x ^ 2 + B * x + C))
    : Rabs (b ^ 2 - 4 * a * c) <= Rabs (B ^ 2 - 4 * A * C).
Proof. Admitted.
