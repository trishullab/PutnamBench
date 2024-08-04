Section putnam_1964_b6.
Require Import Reals Ensembles. From mathcomp Require Import morphism.
Open Scope R.
Theorem putnam_1964_b6
    (image : ((R * R) -> (R * R)) -> Ensemble (R * R) -> Ensemble (R * R) := fun f A => (fun p => exists a : R * R, In (R * R) A a /\ f a = p))
    (D : Ensemble (R * R) := fun v => dist_euc 0 0 (fst v) (snd v) <= 1)
    (cong : Ensemble (R * R) -> Ensemble (R * R) -> Prop := fun A B => exists f : (R * R) -> (R * R), B = image f A /\ forall v w : R * R, dist_euc (fst v) (snd v) (fst w) (snd w) = dist_euc (fst (f v)) (snd (f v)) (fst (f w)) (snd (f w)))
    : ~exists A B : Ensemble (R * R), cong A B /\ Intersection (R * R) A B = Empty_set (R * R) /\ Union (R * R) A B = D.
Proof. Admitted.
End putnam_1964_b6.