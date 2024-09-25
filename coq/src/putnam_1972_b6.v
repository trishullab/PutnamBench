Require Import Nat Reals. From Coquelicot Require Import Complex Hierarchy.
(* uses (nat -> nat) instead of ('I_k -> nat) *)
Theorem putnam_1972_b6
    (k : nat)
    (n : nat -> nat)
    (zpoly : C -> C := fun z : C => (1 + sum_n (fun i => Cpow z (n i)) (k - 1))%C)
    (hk : (k >= 1)%nat)
    (hn : (forall i : nat, i <= k - 1 -> n i > 0)%nat)
    (hn' : (forall i : nat, i <= k - 1 -> forall j : nat, j <= k - 1 -> i < j -> n i < n j)%nat)
    : (forall z : C, Cmod z < ((sqrt 5 - 1) / 2) -> zpoly z <> 0).
Proof. Admitted.