Require Import Binomial Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1997_a6_solution : nat -> nat -> R := (fun n k : nat => Binomial.C (n - 1) (k - 1)).
Theorem putnam_1997_a6
    (n : nat)
    (maxc : R)
    (X := fix x (c: R) (k: nat) : R :=
        match k with
        | O => 0 
        | S O => 1 
        | S ((S k'') as k') => (c * x c k' - INR (n - k) * x c k'') / INR k'
    end)
    (npos : gt n 0)
    (hmaxc : X maxc (add n 1) = 0 /\ (forall c : R, X c (add n 1) = 0 -> c <= maxc))
    : forall (k: nat), (le 1 k /\ le k n) -> X maxc k = putnam_1997_a6_solution n k.
Proof. Admitted.
