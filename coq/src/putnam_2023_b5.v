Require Import PeanoNat. From mathcomp Require Import div fintype perm ssrbool.
Definition putnam_2023_b5_solution (n : nat) := n = 1 \/ n mod 4 = 2.
Theorem putnam_2023_b5
    (p : nat -> Prop := fun n => forall m : nat, coprime m n -> exists (π: {perm 'I_n}), forall (k: 'I_n), (π (π k))%%n mod n = m*k%%n)
    : forall n : nat, p n <-> putnam_2023_b5_solution n.
Proof. Admitted. 
