Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2012_a3_solution (x: R) := sqrt (1 - x ^ 2).
Theorem putnam_2012_a3
    (hf : (R -> R) -> Prop := fun f : R -> R => continuous_on (fun x : R => -1 <= x <= 1) f /\ (forall x : R, -1 <= x <= 1 -> f x = ((2 - x^2)/2)*f (x^2/(2 - x^2))) /\ f 0 = 1 /\ exists (y : R), filterlim (fun x => f x / sqrt (1 - x)) (at_left 1) (locally y))
    : hf putnam_2012_a3_solution /\ (forall f : R -> R, hf f -> (forall x : R, -1 <= x <= 1 -> f x = putnam_2012_a3_solution x)).
Proof. Admitted.
