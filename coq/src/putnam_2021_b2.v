Require Import List Reals Coquelicot.Hierarchy Coquelicot.Series. 
Definition putnam_2021_b2_solution := 2/3.
Theorem putnam_2021_b2
    (A : (nat -> R) -> nat -> R := fun a n => fold_left Rmult (map a (seq 0 n)) 1)
    (B : (nat -> R) -> R := fun a => Series (fun n => INR n * (Rpower (A a n) 1/(INR n))))
    : (forall (a : nat -> R), (forall (i: nat), a i >= 0) /\ Series a = 1 -> putnam_2021_b2_solution >= B a) /\ 
    (exists (a : nat -> R), (forall (i: nat), a i >= 0) /\ Series a = 1 -> putnam_2021_b2_solution =  B a).
Proof. Admitted. 
