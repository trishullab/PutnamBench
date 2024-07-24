Require Import Nat Reals Coquelicot.Coquelicot. From mathcomp Require Import div.
Theorem putnam_2007_b1
    (c: nat -> nat)
    (n: nat)
    (hn : gt n 0)
    (k: nat)
    (f : nat -> R := fun x => sum_n (fun i => INR (mul (c i) (x ^ i))) (k + 1))
    : forall (x: nat), gt (c x) 0 ->
    Z.to_nat (floor (f n)) %| Z.to_nat (floor (f (Z.to_nat (floor (f n + 1))))) = true <-> n = 1%nat.
Proof. Admitted.
