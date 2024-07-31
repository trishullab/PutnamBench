Require Import Reals QArith Coquelicot.Coquelicot. From mathcomp Require Import div.
Open Scope R.
Definition putnam_2008_b5_solution (f : R -> R) := exists n : Z, f = (fun x => x + IZR n) \/ f = (fun x => -x + IZR n).
Theorem putnam_2008_b5
    (f: R -> R)
    (hf : (forall x: R, ex_derive f x) /\ continuity (Derive f))
    : (forall (q: Q), exists (n1 n2 d: nat), Q2R q = INR n1 / INR d /\ f (Q2R q) = INR n2 / INR d /\ coprime n1 d = true /\ coprime n2 d = true) <-> putnam_2008_b5_solution f.
Proof. Admitted.
