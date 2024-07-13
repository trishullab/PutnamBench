Section putnam_1970_b2.
Require Import Reals. From Coquelicot Require Import Coquelicot.
Open Scope R.
Theorem putnam_1970_b2
    (a b c d : R)
    (T : R)
    (H : R -> R := fun t => a*t^3 + b*t^2 + c*t + d)
    (hT : T > 0)
    : (H (-T/sqrt 3) + H (T/sqrt 3))/2 = 1/(2*T) * RInt H (-T) T.
Proof. Admitted.
End putnam_1970_b2.
