Section putnam_1969_a5.
Require Import Reals Ranalysis.
Open Scope R.
Theorem putnam_1969_a5
    (x y : R -> R)
    (hx : derivable x)
    (hy : derivable y)
    : forall t : R, t > 0 -> ((x 0 = y 0) <-> exists u : R -> R, continuity u /\ x t = 0 /\ y t = 0 /\
    derive x hx = (fun p : R => -2 * y p + u p) /\ derive y hy = (fun p : R => -2 * x p + u p)).
Proof. Admitted.
End putnam_1969_a5.
