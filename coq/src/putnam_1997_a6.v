Require Import Binomial Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1997_a6_solution (n k: nat) := Binomial.C (n - 1) (k - 1).
Theorem putnam_1997_a6
    (X := fix x (n: nat) (c: R) (k: nat) : R :=
        match k with
        | O => 0 
        | S O => 1 
        | S ((S k'') as k') => (c * x n c k' - INR (n - k) * x n c k'') / INR k'
    end)
    : forall (n: nat), exists (maxc: R), forall (c: R),
    X n c (S n) = 0 /\ X n maxc (S n) = 0 -> c <= maxc ->
    forall (k: nat), and (le 1 k) (le k n) -> 
    X n c k = putnam_1997_a6_solution n k.
Proof. Admitted.
