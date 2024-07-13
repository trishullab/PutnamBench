Require Import Reals Ranalysis1. From Coquelicot Require Import Hierarchy RInt. From mathcomp.analysis Require Import trigo.
Open Scope R.
(* Uses nat instead of Z for the type of n. *)
Theorem putnam_1967_b3
    (f g : R -> R)
    (fgcont : continuity f /\ continuity g)
    (fgperiod : forall x : R, f (x + 1) = f x /\ g (x + 1) = g x)
    : (filterlim (fun n : nat => (RInt (fun x => f x * g (INR n * x))) 0 1) eventually (locally (RInt f 0 1 * RInt g 0 1))).
Proof. Admitted.