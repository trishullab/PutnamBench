Require Import Reals. From Coquelicot Require Import Coquelicot Continuity RInt.
Open Scope R.
Theorem putnam_2013_b4 
    (fMult : (R -> R) -> (R -> R) -> (R -> R) := fun f g => fun x => f x * g x)
    (mu : (R -> R) -> R := fun f => RInt f 0 1)
    (var : (R -> R) -> (R -> R) := fun f : R -> R => fun x : R => f x - (mu f))
    (Var : (R -> R) -> R := fun f => RInt (fMult (var f) (var f)) 0 1) 
    : forall (f g: R -> R) (x: R), 0 <= x <= 1 -> continuity_pt f x /\ continuity_pt g x ->
    exists (Mf: R), forall (x: R), 0 <= x <= 1 -> Mf = Rmax Mf (Rabs (f x)) /\
    exists (Mg: R), forall (x: R), 0 <= x <= 1 -> Mg = Rmax Mg (Rabs (g x)) ->
    Var (fMult f g) <= 2 * Var f * Mg*Mg + 2 * Var g * Mf * Mf. 
Proof. Admitted.
