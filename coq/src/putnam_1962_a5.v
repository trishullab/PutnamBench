Require Import Coquelicot.Hierarchy Raxioms Nat Binomial.
Definition putnam_1962_a5_solution : nat -> nat := (fun n : nat => mul (mul n (n + 1)) (pow 2 (n - 2))).
Theorem putnam_1962_a5
    : forall n : nat, ge n 2 -> INR (putnam_1962_a5_solution n) = sum_n_m (fun k : nat => (C n k) * INR (k ^ 2)) 1 n.
Proof. Admitted.
