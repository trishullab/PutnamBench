Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1991_b2
    (f g : R -> R)
    (fgnconst : ~ exists (c : R), f = (fun _ => c) \/ g = (fun _ => c))
    (fgdiff : forall x : R, ex_derive f x /\ ex_derive g x)
    (fadd : forall x y : R, f (x + y) = f x * f y - g x * g y)
    (gadd : forall x y : R, g (x + y) = f x * g y + g x * f y)
    : Derive f 0 = 0 -> forall x : R, pow (f x) 2 + pow (g x) 2 = 1.
Proof. Admitted.
