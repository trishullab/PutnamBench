Require Import Reals.
Open Scope R.
Definition putnam_1981_b2_solution := 12 - 8 * sqrt 2.
Theorem putnam_1981_b2
    (f : R -> R -> R -> R := fun a b c => pow (a-1) 2 + pow (b / a - 1) 2 + pow (c / b - 1) 2 + pow (4 / c - 1) 2)
    : (forall (a b c: R), 1 <= a /\ a <= b /\ b <= c /\ c <= 4 -> putnam_1981_b2_solution <= f a b c) /\
    (exists (a b c: R), 1 <= a /\ a <= b /\ b <= c /\ c <= 4 -> putnam_1981_b2_solution  = f a b c).
Proof. Admitted.
