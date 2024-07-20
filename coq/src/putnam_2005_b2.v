Require Import Nat List Reals Coquelicot.Coquelicot.
Import ListNotations.
Definition putnam_2005_b2_solution (n: nat) (k: list nat) := (n, k) = (1%nat, [1%nat]) \/ (n, k) = (3%nat, [2%nat; 3%nat; 6%nat]) \/ (n, k) = (3%nat, [2%nat; 6%nat; 3%nat]) \/ (n, k) = (3%nat, [3%nat; 2%nat; 6%nat]) \/ (n, k) = (3%nat, [3%nat; 6%nat; 2%nat]) \/ (n, k) = (3%nat, [6%nat; 2%nat; 3%nat]) \/ (n, k) = (3%nat, [6%nat; 3%nat; 2%nat]) \/ (n, k) = (4%nat, [4%nat; 4%nat; 4%nat; 4%nat]).
Theorem putnam_2005_b2
    : forall (n: nat) (k: list nat), forall (x: nat), fold_left add k 0%nat = sub (mul 5 n) 4 /\ sum_n (fun n => 1 / INR (nth n k 0%nat)) n = 1 <-> putnam_2005_b2_solution n k.
Proof. Admitted.
