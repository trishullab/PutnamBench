Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2003_b6
    (f : R -> R)
    (hf : continuity f)
    : RInt (fun x => RInt (fun y => Rabs (f x + f y)) 0 1) 0 1 >= RInt (fun x => Rabs (f x)) 0 1.
Proof. Admitted.
