Require Import Ensembles List. From mathcomp Require Import fintype.
Variable A : finType.
Theorem putnam_1968_a3
    (nthvalue : list (Ensemble A) -> nat -> Ensemble A)
    (hnthvalue : forall (l : list (Ensemble A)) (n : nat), n < length l -> nth_error l n = value (nthvalue l n))
    : exists l : list (Ensemble A), head l = value (Empty_set A) /\ (forall SS : Ensemble A, exists! i : nat, i < length l /\ nthvalue l i = SS) /\
    (forall i : nat, i < length l - 1 -> (exists a : A, (~((nthvalue l i) a) /\ nthvalue l (i + 1) = Ensembles.Add A (nthvalue l i) a) \/ (~((nthvalue l (i + 1)) a) /\ nthvalue l i = Ensembles.Add A (nthvalue l (i + 1)) a))).
Proof. Admitted.
