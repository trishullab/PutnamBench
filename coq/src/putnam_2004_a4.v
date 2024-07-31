Require Import List Reals QArith Coquelicot.Coquelicot.
Theorem putnam_2004_a4
    (n : nat)
    (x : list R)
    (avals : nat -> (nat -> nat -> R) -> Prop := fun (N : nat) (a : nat -> nat -> R) => forall i j : nat, lt i N /\ lt j n -> a i j = -1 \/ a i j = 0 \/ a i j = 1)
    (npos : gt n 0)
    (hx : length x = n)
    : exists (N : nat) (c : nat -> Q) (a : nat -> nat -> R), avals N a /\ fold_left Rmult x 1 = sum_n (fun i : nat => Q2R (c i) * (sum_n (fun j : nat => a i j * nth j x 0) (n - 1)) ^ n) (N - 1).
Proof. Admitted.