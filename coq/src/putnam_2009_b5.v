Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2009_b5
    (f: R -> R) 
    (hf : R -> Prop := fun x => (1 < x /\ ex_derive f x /\ Derive f x = (x ^ 2 - (f x) ^ 2) / (x ^ 2  * ((f x) ^ 2 + 1))))
    : ~ ex_lim_seq (fun n => f (INR n)).
Proof. Admitted.
