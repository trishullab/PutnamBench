Require Import Reals Coquelicot.Coquelicot Ensembles.
Theorem putnam_1966_a5
    (C : Ensemble (R -> R) := fun f => continuity f)
    (T : (R -> R) -> (R -> R))
    (imageTC : forall f : R -> R, In _ C f -> In _ C (T f))
    (linearT : forall a b : R, forall f g : R -> R, In _ C f -> In _ C g -> T (fun x : R => a * f x + b * g x) = (fun x => a * T f x + b * T g x))
    (localT : forall r s : R, r <= s -> forall f g : R -> R, In _ C f -> In _ C g -> (forall x : R, r <= x <= s -> f x = g x) -> (forall x : R, r <= x <= s -> T f x = T g x))
    : exists f : R -> R, In _ C f /\ (forall g : R -> R, In _ C g -> T g = fun x => f x * g x).
Proof. Admitted.
