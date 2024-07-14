Require Import Nat Reals Coquelicot.Hierarchy. From mathcomp Require Import fintype.
Theorem putnam_1968_a4
    (n : nat)
    (ordofnat3 : nat -> 'I_3)
    (dist3 : ('I_3 -> R) -> ('I_3 -> R) -> R := (fun (a b : 'I_3 -> R) => sqrt ((a (ordofnat3 O) - b (ordofnat3 O)) ^ 2 + (a (ordofnat3 (S O)) - b (ordofnat3 (S O))) ^ 2 + (a (ordofnat3 (S (S O))) - b (ordofnat3 (S (S O)))) ^ 2)))
    (SS : 'I_n -> ('I_3 -> R))
    (ordofnatn : nat -> 'I_n)
    (hordofnat3 : forall i : 'I_3, ordofnat3 (nat_of_ord i) = i)
    (hSS : forall i : 'I_n, dist3 (SS i) (fun _ : 'I_3 => INR 0) = INR 1)
    (hordofnatn : forall i : 'I_n, ordofnatn (nat_of_ord i) = i)
    : sum_n (fun i : nat => sum_n (fun j : nat => if ltb i j then (dist3 (SS (ordofnatn i)) (SS (ordofnatn j))) ^ 2 else 0) (n - 1)) (n - 1) <= INR n ^ 2.
Proof. Admitted.
