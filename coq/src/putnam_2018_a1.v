Require Import Nat Factorial QArith. 
Open Scope Q_scope.
Definition putnam_2018_a1_solution (a b: nat): Prop := (a = 673%nat /\ b = 1358114%nat) \/ (a = 674%nat /\ b = 340033%nat) \/ (a = 1009%nat /\ b = 2018%nat) \/ (a =2018%nat /\ b = 1009%nat) \/ (a = 340033%nat /\ b = 674%nat) \/ (a = 1358114%nat /\ b = 673%nat).
Theorem putnam_2018_a1
    (hProp : nat -> nat -> Prop := fun a => fun b => 1/(inject_Z (Z.of_nat a)) + 1/(inject_Z (Z.of_nat b)) = 3/2018)
    : forall (a b: nat), gt a 0 /\ gt b 0 /\ hProp a b
    <-> putnam_2018_a1_solution a b.
Proof. Admitted. 
