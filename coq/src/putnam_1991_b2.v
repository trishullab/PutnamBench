Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1991_b2
    (f g: R -> R)
    (hfg : ~ exists (c: R), f = (fun _ => c) \/ g = (fun _ => c) /\ forall x, ex_derive_n f 1 x /\ forall x, ex_derive_n g 1 x)
    : forall (x y: R), f (x + y) = f x * f y - g x * g y /\ g (x + y) = f x * g y - g x * f y ->
    Derive f 0 = 0 -> forall (x: R), pow (f x) 2 + pow (g x) 2 = 1.
Proof. Admitted.
