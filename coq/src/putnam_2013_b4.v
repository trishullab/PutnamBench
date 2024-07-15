Require Import Reals. From Coquelicot Require Import Coquelicot Continuity RInt.
Open Scope R.
Theorem putnam_2013_b4 
    (fMult : (R -> R) -> (R -> R) -> (R -> R) := fun f g => fun x => f x * g x)
    (mu : (R -> R) -> R := fun f => RInt f 0 1)
    (var : (R -> R) -> (R -> R) := fun f : R -> R => fun x : R => f x - (mu f))
    (Var : (R -> R) -> R := fun f => RInt (fMult (var f) (var f)) 0 1) 
    (M : (R -> R) -> R)
    (hM : forall (f : R -> R), ((exists (x : R), (0 <= x <= 1) /\ Rabs (f x) = M f) /\ (forall x : R, 0 <= x <= 1 -> Rabs (f x) <= M f)))
    : forall (f g: R -> R), (forall (x: R), 0 <= x <= 1 -> continuity_pt f x /\ continuity_pt g x) ->
        Var (fMult f g) <= 2 * Var f * (M g)^2 + 2 * Var g * (M f)^2. 
Proof. Admitted.
