Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2009_b5
    (f: R -> R) 
    (hf : R -> Prop := fun x => (1 < x /\ ex_derive f x /\ Derive f x = (x ^ 2 - (f x) ^ 2) / (x ^ 2  * ((f x) ^ 2 + 1))))
    : filterlim (fun n : nat => f (INR n)) eventually (Rbar_locally p_infty).
Proof. Admitted.
