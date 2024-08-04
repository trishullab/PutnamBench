(* Note: This formalization is only a statement finite groups (due to mathcomp), but the idea of the problem does not rely on the cardinal of the group, so we include it*)
Require Import Basics. From mathcomp Require Import fingroup.
Open Scope group_scope.
Variable T : finGroupType.
Theorem putnam_1997_a4
    (G : {group T})
    (f : T -> T)
    (hf : forall g1 g2 g3 h1 h2 h3 : T, ((g1 * g2 * g3) = 1 /\ (h1 * h2 * h3) = 1) -> (f g1 * f g2 * f g3 = f h1 * f h2 * f h3))
    : exists a : T, let psi := fun g => a * f g in (forall x y : T, psi (x * y) = psi x * psi y).
Proof. Admitted.
