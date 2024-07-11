Section putnam_1964_b5.
Require Import Reals. From Coquelicot Require Import Lim_seq Hierarchy.
Open Scope nat_scope.
Theorem putnam_1964_b5
    (a : nat -> nat)
    (ha : (forall n : nat, gt (a (n + 1)) (a n)) /\ (forall n : nat, gt (a n) 0))
    (b : nat -> nat)
    (hb : b 0 = a 0 /\ forall n : nat, b (n + 1) = Nat.lcm (b n) (a (n + 1)))
    : ex_lim_seq (fun N => sum_n (fun n => Rdiv (INR 1) (INR (b n))) N).
Proof. Admitted.
End putnam_1964_b5.