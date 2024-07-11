Require Import Reals ZArith Coquelicot.Coquelicot.
Theorem putnam_1973_a3
    (b : Z -> R)
    (hbminle : forall n : Z, Z.gt n 0 -> (forall k : Z, Z.gt k 0 -> b n <= (IZR k + (IZR n)/(IZR k))%R ))
    (hbmineq : forall n : Z, Z.gt n 0 -> exists k : Z, Z.gt k 0 /\ b n = (IZR k + (IZR n)/(IZR k)))
    : forall n : Z, Z.gt n 0 -> (floor (b n) = floor (sqrt (4 * (IZR n) + 1))).
Proof. Admitted.
