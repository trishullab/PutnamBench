Require Import Reals ZArith. From Coquelicot Require Import Series Lim_seq Hierarchy Rbar.
Theorem putnam_1963_b5
    (a : Z -> R)
    (haineq : forall n : Z, (n >= 1)%Z -> forall k : Z, ((n <= k)%Z /\ (k <= 2 * n)%Z) -> (0 <= a k /\ a k <= 100 * a n))
    (haseries : ex_lim_seq (fun nInc => sum_n (fun n => a (Z.of_nat n)) nInc))
    : (is_lim_seq (fun n : nat => (INR n) * (a (Z.of_nat n))) 0).
Proof. Admitted.