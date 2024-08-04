Require Import Reals Coquelicot.Coquelicot. From mathcomp Require Import div.
Open Scope R.
Definition putnam_1997_b3_solution : nat -> Prop := (fun n : nat => (le 1 n /\ le n 4) \/ (le 20 n /\ le n 24) \/ (le 100 n /\ le n 104) \/ (le 120 n /\ le n 124)).
Theorem putnam_1997_b3
    (n : nat)
    (p q : nat)
    (hn : gt n 0)
    (hpq : gt p 0 /\ gt q 0 /\ coprime p q = true /\ sum_n_m (fun m => 1 / INR m) 1 n = INR p / INR q)
    : neq (q mod 5) 0 <-> putnam_1997_b3_solution n.
Proof. Admitted.
