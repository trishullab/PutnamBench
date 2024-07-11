Section putnam_1964_b2.
Require Import Ensembles Finite_sets Nat. From mathcomp Require Import fintype.
Theorem putnam_1964_b2
    (A : finType)
    (n : nat)
    (hn : cardinal A (fun a : A => True) n)
    (npos : gt n 0)
    (P : Ensemble (Ensemble A))
    (hPP : forall T U : Ensemble A, (In (Ensemble A) P T /\ In (Ensemble A) P U) -> Intersection A T U <> Empty_set A)
    (hPS : ~exists T : Ensemble A, (~In (Ensemble A) P T) /\ (forall U : Ensemble A, In (Ensemble A) P U -> Intersection A T U <> Empty_set A))
    : cardinal (Ensemble A) P (2^(n - 1)).
Proof. Admitted.
End putnam_1964_b2.