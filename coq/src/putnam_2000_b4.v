Open Scope R_scope.
Require Import Reals.
Theorem putnam_2000_b4
    (f: R -> R)
    : continuity f -> forall x, f (2*x*x-1) = 2*x*(f x) -> forall x, -1 <= x <= 1 -> f x = 0. 
Proof. Admitted.
