Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2008_a1
    (f : R -> R -> R)
    (x y z: R)
    (hf : f x y + f y z + f z x = 0)
    : exists (g: R -> R), forall (x y: R), f x y = g x - g y.
Proof. Admitted.
