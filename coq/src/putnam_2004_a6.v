Require Import Basics Reals Coquelicot.Coquelicot.
Theorem putnam_2004_a6
    (f: R -> R -> R) 
    (hf : forall x y : R, (0 <= x <= 1 /\ 0 <= y <= 1) -> continuity_2d_pt f x y)
    : RInt (fun y => (RInt (fun x => f x y) 0 1)^2) 0 1 + RInt (fun x => (RInt (fun y => f x y) 0 1)^2) 0 1 <= 
    (RInt (fun x => RInt (fun y => f x y) 0 1) 0 1) ^ 2 + RInt (fun x => RInt (fun y => (f x y) ^ 2) 0 1) 0 1.
Proof. Admitted.
