Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2016_a2_solution := (3 + sqrt 5) / 2.
Theorem putnam_2016_a2
    (p : nat -> nat -> Prop := fun n m => gt m 0 /\ Binomial.C m (n - 1) > Binomial.C (m - 1) n)
    (M : nat -> nat)
    (pM : forall n : nat, gt n 0 -> p n (M n))
    (hMub : forall n m : nat, gt n 0 /\ p n m -> le m (M n)) 
    : Lim_seq (fun n => (INR (M n) / INR n)) = putnam_2016_a2_solution.
Proof. Admitted.
