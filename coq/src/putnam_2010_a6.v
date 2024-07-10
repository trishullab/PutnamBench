Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2010_a6
    (f: R -> R)
    (x y: R)
    (hf : x >= 0 /\ x < y -> f x > f y /\ continuity_pt f x /\ Lim_seq (fun n => f (INR n)) = 0)
    : ~ ex_lim_seq (fun nInc => RInt (fun x => (f x - f (x + 1)) / f x) 0 (INR nInc)).
Proof. Admitted.
