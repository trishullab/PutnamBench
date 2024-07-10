Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2006_b6_solution (k: nat) := ((INR k + 1) / INR k) ^ k.
Theorem putnam_2006_b6
    (a0: R)
    (k: nat)
    (ha0 : a0 > 0)
    (hk : ge k 1)
    (A := fix a (n: nat) : R :=
        match n with
        | O => a0
        | S n' => a n' + 1 / (a n') ^ (1 / k)
    end)
    : Lim_seq (fun n => (A n) ^ (k + 1) / INR n ^ k) = putnam_2006_b6_solution k.
Proof. Admitted.
