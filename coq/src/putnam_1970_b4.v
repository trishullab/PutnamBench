Section putnam_1970_b4.
Require Import Reals Ranalysis.
Open Scope R.
Theorem putnam_1970_b4
    (x : R -> R)
    (hd1 : derivable x)
    (hd2 : derivable (derive x hd1))
    (hx : x 1 - x 0 = 1)
    (hv : derive x hd1 0 = 0 /\ derive x hd1 1 = 0)
    (hs : forall t : R, 0 < t < 1 -> Rabs (derive x hd1 t) <= 3/2)
    : exists t : R, 0 <= t <= 1 /\ Rabs (derive (derive x hd1) hd2 t) >= 9/2.
Proof. Admitted.
End putnam_1970_b4.
