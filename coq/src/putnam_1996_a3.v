Require Import Nat Ensembles Finite_sets. From mathcomp Require Import fintype.
Definition putnam_1996_a3_solution : Prop := False.
Theorem putnam_1996_a3
    (student_choices : nat -> Ensemble nat)
    (hinrange : forall n : nat, Included _ (student_choices n) (fun i : nat => le 1 i /\ le i 6))
    : putnam_1996_a3_solution <-> (exists S : Ensemble nat, Included _ S (fun i : nat => le 1 i /\ le i 20) /\ cardinal _ S 5 /\ 
        (exists c1 c2 : nat, Included _ (fun i : nat => i = c1 \/ i = c2) (fun i : nat => le 1 i /\ le i 6) /\ 
        (Included _ (fun i : nat => i = c1 \/ i = c2) (fun i : nat => (forall s : nat, In _ S s -> In _ (student_choices s) i)
        \/ Included _ (fun i : nat => i = c1 \/ i = c2) (fun i : nat => forall s : nat, In _ S s -> ~ (In _ (student_choices s) i)))))).
Proof. Admitted.
