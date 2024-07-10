Require Import Reals Coquelicot.Coquelicot. From mathcomp Require Import div.
Open Scope R.
Definition putnam_1997_b3_solution (n: nat) := and (le 1 n) (le n 4) \/ and (le 20 n) (le n 24)  \/ and (le 100 n) (le n 104) \/ and (le 120 n) (le n 124).
Theorem putnam_1997_b3
    : forall (n: nat), gt n 0 -> exists (p q: nat), gt p 0 /\ gt q 0 /\ coprime p q = true /\
    sum_n (fun m => 1 / INR (m + 1)) n = INR p / INR q -> neq (q mod 5) 0 -> putnam_1997_b3_solution n.
Proof. Admitted.
