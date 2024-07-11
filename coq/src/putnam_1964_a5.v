Section putnam_1964_a5.
Require Import Reals. From Coquelicot Require Import Lim_seq Hierarchy Series.
Theorem putnam_1964_a5
    (pa : (nat -> R) -> Prop := fun a => (forall n : nat, a n = 0) /\ ex_lim_seq (fun N => sum_n (fun n => 1 / a n) N))
    : exists k : R, forall a : nat -> R, pa a -> Series (fun n => INR (n + 1) / sum_n a n) <= k * Series (fun n => 1 / a n).
Proof. Admitted.
End putnam_1964_a5.