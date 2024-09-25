Require Import Reals Ensembles Coquelicot.Coquelicot.
Definition putnam_1971_b2_solution : Ensemble (R -> R) := fun f => (f = fun x : R => (x^3 - x^2 - 1)/(2 * x * (x-1))).
Theorem putnam_1971_b2
    (S : Ensemble R := fun x => x <> 0 /\ x <> 1)
    (P : (R -> R) -> Prop := fun F => forall x : R, In _ S x -> F x + F ((x-1)/x) = 1 + x)
    : (forall F : R -> R, In _ putnam_1971_b2_solution F -> P F) /\ (forall f : R -> R, P f -> (exists F : R -> R, In _ putnam_1971_b2_solution F /\ (forall x : R, In _ S x -> f x = F x))).
Proof. Admitted.