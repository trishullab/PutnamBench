Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1984_b2_solution := 8.
Theorem putnam_1984_b2
    (f : R -> R -> R := fun x y => pow (x - y) 2 + pow (sqrt (2 - pow x 2) - 9 / y) 2)
    : exists (m: R), (forall (x y: R), 0 < x < sqrt 2 /\ y > 0 -> f x y >= m) /\
    (exists (x y: R), 0 < x < sqrt 2 /\ y > 0 -> f x y = m) ->
    m = putnam_1984_b2_solution.
Proof. Admitted.
