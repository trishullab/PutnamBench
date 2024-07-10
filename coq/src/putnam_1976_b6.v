Require Import List Nat.
Theorem putnam_1976_b6
    (sigma : nat -> nat := fun n => fold_right plus 0 (filter (fun m => Nat.eqb (n mod m) 0) (seq 1 (S n))))
    : forall (n: nat), sigma n = 2*n + 1 -> exists (m: nat), (odd m = true )/\ n = m*m. 
Proof. Admitted.
