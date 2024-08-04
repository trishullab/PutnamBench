Section putnam_1964_b3.
Require Import Reals. From Coquelicot Require Import Hierarchy Rbar.
Theorem putnam_1964_b3
    (f : R -> R)
    (hf : continuity f /\ forall alpha : R, alpha > 0 -> filterlim (fun n : nat => f ((INR n) * alpha)) eventually (locally 0))
    : filterlim f (Rbar_locally p_infty) (locally 0).
Proof. Admitted.
End putnam_1964_b3.