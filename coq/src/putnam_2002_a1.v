Require Import Reals Factorial Coquelicot.Coquelicot.
Definition putnam_2002_a1_solution (k n: nat) := Rpower (-1 * INR k) (INR n) * INR (fact n).
Theorem putnam_2002_a1
    (k : nat)
    (p : (nat -> R) -> R -> nat -> R := fun a x n => sum_n (fun i => a i * x ^ i) n)
    (kpos : gt k 0)
    : forall (N: nat), forall (a: nat -> R) (n: nat),
    (forall (x: R), (Derive_n (fun x => 1 / (x ^ k - 1)) N) x = (p a x n) / (x ^ k - 1) ^ (n + 1)) ->
    p a 1 n = putnam_2002_a1_solution k n.
Proof. Admitted.
