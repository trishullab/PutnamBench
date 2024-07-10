Require Import Nat List Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1996_b3_solution : nat -> R := fun n => (2 * INR n ^ 3 + 3 * INR n ^ 2 - 11 * INR n + 18) / 6.
Theorem putnam_1996_b3
    (m: nat -> R)
    (n: nat)
    (hn : ge n 2)
    (hmub : sum_n (fun i => INR ((nth i (seq 1 (S n)) 0%nat) * (nth ((i + 1) mod n) (seq 1 (S n)) 0%nat))) n <= m n)
    (hm : sum_n (fun i => INR ((nth i (seq 1 (S n)) 0%nat) * (nth ((i + 1) mod n) (seq 1 (S n))) 0%nat)) n = m n)
    : m = putnam_1996_b3_solution.
Proof. Admitted.
