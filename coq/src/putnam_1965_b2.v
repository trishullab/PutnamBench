Require Import Coquelicot.Hierarchy Reals. From mathcomp Require Import fintype.
Theorem putnam_1965_b2
    (n : nat)
    (won : 'I_n -> 'I_n -> bool)
    (ordofnat : nat -> 'I_n)
    (w : 'I_n -> R := (fun r : 'I_n => sum_n (fun j : nat => if (won r (ordofnat j)) then 1 else 0) (n - 1)))
    (l : 'I_n -> R := (fun r : 'I_n => INR n - 1 - w r))
    (hn : gt n 1)
    (hirrefl : forall i : 'I_n, won i i = false)
    (hantisymm : forall i j : 'I_n, i <> j -> won i j = negb (won j i))
    (hordofnat : forall i : 'I_n, ordofnat (nat_of_ord i) = i)
    : sum_n (fun r : nat => (w (ordofnat r)) ^ 2) (n - 1) = sum_n (fun r : nat => (l (ordofnat r)) ^ 2) (n - 1).
Proof. Admitted.
