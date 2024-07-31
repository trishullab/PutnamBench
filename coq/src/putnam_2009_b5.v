Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2009_b5
    (f: R -> R) 
    (hf : forall (x: R), 1 < x -> (ex_derive f x /\ Derive f x = (x ^ 2 - (f x) ^ 2) / (x ^ 2 * ((f x) ^ 2 + 1))))
    : is_lim f p_infty p_infty.
Proof. Admitted.
