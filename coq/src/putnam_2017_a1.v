From mathcomp Require Import div.
Definition putnam_2017_a1_solution (x: nat) := x > 0 /\ (x = 1 \/ 5 %| x = true).
Theorem putnam_2017_a1
    (A: nat -> Prop)
    (valid_set : (nat -> Prop) -> Prop := fun E => forall (n: nat), E 2 /\ E (n*n) -> E n /\ E n -> E ((n+5)*(n+5)))
    (hA : forall (B: nat -> Prop), valid_set A /\ valid_set B /\ forall (n: nat), A n -> B n)
    : forall n, ~ A n <-> putnam_2017_a1_solution n.
Proof. Admitted.
End putnam_2017_a1.