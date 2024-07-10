Require Import Ensembles Finite_sets Reals Coquelicot.Coquelicot. From mathcomp Require Import div seq ssrnat ssrbool.
Definition putnam_1974_b6_solution : seq nat := [:: (21000/3)%nat; (21000/3)%nat; (21000/3 + 1)%nat; (21001/3 + 1)%nat; (21001/3)%nat; (21001/3 + 1)%nat].
Theorem putnam_1974_b6
    (E : Ensemble R)
    (E' : Ensemble R)
    (pres : R -> Prop)
    (hE : cardinal R E 1000)
    (hE' : cardinal R E 1001)
    (habc : nat -> Ensemble (Ensemble R) := fun val => fun (subE : Ensemble R) => exists (subEsz: nat), (forall x: R, subE x -> E x /\ pres x) /\ cardinal R subE subEsz /\ subEsz mod 3 = val)
    (habc' : nat -> Ensemble (Ensemble R) := fun val => fun (subE' : Ensemble R) => exists (subEsz': nat), (forall x: R, subE' x -> E' x /\ pres x) /\ cardinal R subE' subEsz' /\ subEsz' mod 3 = val)
    : cardinal (Ensemble R) (habc 0%nat) (nth 0%nat putnam_1974_b6_solution 0) /\
    cardinal (Ensemble R) (habc 1%nat) (nth 0%nat putnam_1974_b6_solution 1) /\
    cardinal (Ensemble R) (habc 2%nat) (nth 0%nat putnam_1974_b6_solution 2) /\
    cardinal (Ensemble R) (habc' 0%nat) (nth 0%nat putnam_1974_b6_solution 3) /\
    cardinal (Ensemble R) (habc' 1%nat) (nth 0%nat putnam_1974_b6_solution 4) /\
    cardinal (Ensemble R) (habc' 2%nat) (nth 0%nat putnam_1974_b6_solution 5).
Proof. Admitted.
End putnam_1974_b6.
