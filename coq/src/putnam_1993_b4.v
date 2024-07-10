Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1993_b4 
    (K: (R * R) -> R) 
    (f g: R -> R)
    (hK : forall (xy : R * R), let (x, y) := xy in 0 <= x <= 1 /\ 0 <= y <= 1 /\ K xy > 0 /\ continuous K xy)
    (hfg : forall (x: R), 0 <= x <= 1 /\ f x > 0 /\ g x > 0 /\ continuity f /\ continuity g ->
        forall (x: R), 0 <= x <= 1 -> 
        (RInt (fun y => f y * K (x, y)) 0 1) = g x /\
        RInt (fun y => g y * K (x, y)) 0 1 = f x)
    : forall (x: R), 0 <= x <= 1 -> f x = g x.
Proof. Admitted.
