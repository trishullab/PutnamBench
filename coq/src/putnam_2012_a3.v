Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2012_a3_solution (x: R) := sqrt (1 - x ^ 2).
Theorem putnam_2012_a3
    (f: R -> R)
    : forall x, (-1 <= x <= 1 /\ continuity_pt f x /\ f x = (2 - x ^ 2) / 2 * f ((x ^ 2) / (2 - x ^ 2)) /\ f 0 = 1 /\
    exists (c: R), filterlim (fun x => f x / sqrt (1 - x)) (at_left 1) (locally c)) <-> f x = putnam_2012_a3_solution x.
Proof. Admitted.
