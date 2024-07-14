Section putnam_1970_b5.
Require Import Reals Basics Ranalysis.
Open Scope R.
Theorem putnam_1970_b5
    (ramp : nat -> (R -> R) := fun n => (fun x => Rmin (Rmax x (-(INR n))) (INR n)))
    (F : R -> R)
    : continuity F <-> (forall n : nat, continuity (compose (ramp n) F)).
Proof. Admitted.
End putnam_1970_b5.
