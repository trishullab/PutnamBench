Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1996_a6_solution (c: R) (f: R -> R) :=  if Rle_dec c (1/4) then (exists (d: R), f = (fun _ => d)) else ((forall (x: R), 0 <= x <= c -> continuity_pt f x) /\ f 0 = f c /\ (forall (x: R), x > 0 -> f x = f (pow x 2 + c)) /\ (forall (x: R), x < 0 -> f x = f (-x))).
Theorem putnam_1996_a6
    (c: R)
    (hc : c > 0)
    : forall (f: R -> R), (continuity f /\ (forall (x: R), f x = pow x 2 + c)) <-> putnam_1996_a6_solution c f.
Proof. Admitted.
