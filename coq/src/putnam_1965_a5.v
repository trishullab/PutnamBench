Require Import Nat Finite_sets. From mathcomp Require Import fintype perm.
Definition putnam_1965_a5_solution : nat -> nat := (fun n : nat => 2 ^ (n - 1)).
Theorem putnam_1965_a5
    : forall n : nat, n > 0 -> cardinal {perm 'I_n} (fun p : {perm 'I_n} => forall m : 'I_n, m > 0 -> exists k : 'I_n, k < m /\ (nat_of_ord (p m) = (p k) + 1 \/ nat_of_ord (p m) = (p k) - 1)) (putnam_1965_a5_solution n).
Proof. Admitted.
