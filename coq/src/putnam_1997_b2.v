Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1997_b2 
    (f g : R -> R)
    (hg : forall x : R, g x >= 0)
    (hfdiff : forall x : R, ex_derive f x /\ ex_derive_n f 2 x)
    (hfg : forall x : R, f x + Derive_n f 2 x = -x * g x * Derive f x)
    : exists M : R, (forall x : R, -M <= abs (f x) <= M).
Proof. Admitted.
