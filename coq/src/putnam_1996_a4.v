Require Import Basics FinFun Reals Ensembles Finite_sets. From mathcomp Require Import fintype.
Local Open Scope R_scope.
Theorem putnam_1996_a4
    (A : finType)
    (SS : Ensemble (A * A * A))
    (hSdistinct: forall a b c : A, In _ SS (a, b, c) -> a <> b /\ b <> c /\ c <> a)
    (hS1 : forall a b c : A, In _ SS (a, b, c) <-> In _ SS (b, c, a))
    (hS2 : forall a b c : A, a <> c -> (In _ SS (a, b, c) <-> ~ (In _ SS (c, b, a))))
    (hS3 : forall a b c d : A, (In _ SS (a, b, c) /\ In _ SS (c, d, a)) <-> (In _ SS (b, c, d) /\ In _ SS (d, a, b)))
    : exists g : A -> R, Injective g /\ (forall a b c : A, g a < g b /\ g b < g c -> In _ SS (a, b, c)).
Proof. Admitted.
