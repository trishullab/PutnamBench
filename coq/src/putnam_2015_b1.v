Require Import Reals List Coquelicot.Derive.
Open Scope R_scope.
Theorem putnam_2015_b1
    (f : R -> R)
    (l: list R)
    (hf : Prop := continuity (Derive_n f 3) -> length l = 5%nat /\ NoDup l /\ forall x, In x l -> f x = 0)
    (g : R -> R := fun x => f x + 6 * (Derive_n f 1) x + 12 * (Derive_n f 2) x + 8 * (Derive_n f 3) x)
    : exists (l': list R), length l = 2%nat /\ NoDup l' /\ forall x, In x l' -> g x = 0.
Proof. Admitted.
End putnam_2015_b1.