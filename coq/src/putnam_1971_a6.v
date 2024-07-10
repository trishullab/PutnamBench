Require Import Reals ZArith.
Theorem putnam_1971_a6
    (c : R)
    (hc : forall n : Z, Z.gt n 0 -> exists m : Z, Rpower (IZR n) c = IZR m)
    : exists m : Z, Z.ge m 0 /\ c = IZR m.
Proof. Admitted.
