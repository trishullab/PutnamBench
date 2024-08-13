Require Import Nat Reals List Coquelicot.Coquelicot.
Open Scope nat_scope.
Definition putnam_1985_a5_solution (n : nat) := n = 3 \/ n = 4 \/ n = 7 \/ n = 8.
Theorem putnam_1985_a5
    (F : nat -> R -> R := fun n x => fold_right Rmult 1%R (map (fun i : nat => cos (INR i * x)) (seq 1 n)))
    : forall (n: nat), 1 <= n <= 10 -> (RInt (F n) 0 (2*PI) <> 0%R <-> putnam_1985_a5_solution n).
Proof. Admitted. 