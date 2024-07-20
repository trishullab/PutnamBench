Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2014_b2_solution : R := ln (4 / 3) / ln 10.
Theorem putnam_2014_b2
    (fbound : (R -> R) -> Prop := fun f => forall x : R, 1 <= x <= 3 -> -1 <= f x <= 1)
    (finteq0 : (R -> R) -> Prop := fun f => RInt f 1 3 = 0)
    (fint : (R -> R) -> R := fun f => RInt (fun x => f x / x) 1 3)
    : (exists f : R -> R, fbound f /\ finteq0 f /\ fint f = putnam_2014_b2_solution) /\ (forall f : R -> R, fbound f /\ finteq0 f -> fint f <= putnam_2014_b2_solution).
Proof. Admitted.