Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2010_a6
    (f: R -> R)
    (hf : (forall (x: R), x >= 0 -> (forall (y: R), x < y -> f x > f y) /\ continuity_pt f x) /\ is_lim f p_infty 0)
    : ~ ex_finite_lim (fun nInc => RInt (fun x => (f x - f (x + 1)) / f x) 0 nInc) p_infty.
Proof. Admitted.
