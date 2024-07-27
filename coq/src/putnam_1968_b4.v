Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1968_b4
    (f : R -> R)
    (hf : continuity f /\ exists r : R, Lim_seq (fun n : nat => RInt f (-(INR n)) (INR n)) = r)
    : Lim_seq (fun n : nat => RInt (fun x : R => f (x - 1 / x)) (-(INR n)) (INR n)) = Lim_seq (fun n : nat => RInt f (-(INR n)) (INR n)).
Proof. Admitted.
