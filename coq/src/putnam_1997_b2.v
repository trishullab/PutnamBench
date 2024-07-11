Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1997_b2 
    (f g: R -> R)
    (habsbdd : R -> Prop := fun m => forall x, -m <= abs (f x) <= m)
    : exists (M: R), forall (x: R), ex_derive_n f 2 x /\ g x >= 0 /\ f x + Derive_n f 2 x = -x * g x * Derive f x -> habsbdd M.
Proof. Admitted.
