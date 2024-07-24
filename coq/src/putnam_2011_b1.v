Require Import Reals ZArith Coquelicot.Coquelicot.
Theorem putnam_2011_b1
    : forall (h k: Z), Z.gt h 0 /\ Z.gt k 0 -> forall (ep: R), ep > 0 -> exists (m n: Z), Z.gt m 0 /\ Z.gt n 0 /\ ep < Rabs (IZR h * sqrt (IZR m) - IZR k * sqrt (IZR n)) < 2 * ep.
Proof. Admitted.
