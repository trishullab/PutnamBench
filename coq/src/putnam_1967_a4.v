Require Import Reals Coquelicot.RInt Coquelicot.Hierarchy.
Open Scope R.
Theorem putnam_1967_a4
    (lambda : R)
    (hlambda : lambda > 1 / 2)
    : (~exists u : R -> R, forall x : R, 0 <= x <= 1 -> u x = 1 + lambda * RInt (fun y => u y * u (y - x)) x 1).
Proof. Admitted.