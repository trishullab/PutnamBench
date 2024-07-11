Require Import Reals Coquelicot.Coquelicot. From mathcomp Require Import div.
Open Scope R.
Definition putnam_2008_b5_solution (f : R -> R) := exists n : Z, f = (fun x => x + IZR n) /\ f = (fun x => -x + IZR n).
Theorem putnam_2008_b5
    (f: R -> R)
    (hf : continuity f)
    : forall (x: R), ex_derive f x -> forall (q: R), exists (n1 n2 d: nat), q = INR (n1 / d) /\ f q = INR (n2 / d) /\ coprime n1 d = true /\ coprime n2 d = true <-> putnam_2008_b5_solution f.
Proof. Admitted.
