Require Import Reals Coquelicot.Series.
Open Scope R_scope.
Theorem putnam_2017_b3
    (c : nat -> R)
    : (forall n, c n = 0 \/ c n = 1) -> Series (fun n => c n * (2/3)^n) = 3/2 -> ~ exists a b: Z, b <> 0%Z /\ (Series (fun n => c n * (1/2)^n)) = IZR a / IZR b.
Proof. Admitted.
