Section putnam_1970_a4.
Require Import Reals. From Coquelicot Require Import Hierarchy.
Theorem putnam_1970_a4
    (x : nat -> R)
    (hxlim : filterlim (fun n => x n - x (Nat.sub n 2)) eventually (locally 0))
    : filterlim (fun n => (x n - x (Nat.sub n 1)) / (INR n)) eventually (locally 0).
Proof. Admitted.
End putnam_1970_a4.
