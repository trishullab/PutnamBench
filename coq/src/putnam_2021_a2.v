Require Import Reals. From Coquelicot Require Import Continuity Lim_seq Rbar. 
Open Scope R.
Definition putnam_2021_a2_solution := exp 1.
Theorem putnam_2021_a2
    (sequence_r_to_0 : nat -> R := fun n => 1 / INR n)
    (f : R -> R -> R := fun r x => Rpower (Rpower(x+1)(r+1) - Rpower x (r+1)) 1/r)
    (g : R -> R := fun x => Lim_seq (fun n => f (sequence_r_to_0 n) x))
    : Lim_seq (fun n => (g (INR n))/INR n) = putnam_2021_a2_solution.
Proof. Admitted. 
