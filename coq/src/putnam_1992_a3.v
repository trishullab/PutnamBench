Require Import Nat. From mathcomp Require Import div fintype perm ssrbool.
Definition putnam_1992_a3_solution (x y n m: nat) := exists r, x = 2 ^ r /\ y = 2 ^ r /\ n = 2 * r /\ m = 2 * r + 1.
Theorem putnam_1992_a3
    (m : nat)
    (hm : m > 0)
    (hnxy : nat -> nat -> nat -> Prop := fun n x y => n > 0 /\ x > 0 /\ y > 0 /\ coprime n m /\ pow (pow x 2 + pow y 2) m = pow (x * y) m)
    : forall n x y, putnam_1992_a3_solution x y n m.
Proof. Admitted.
