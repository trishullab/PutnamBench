Require Import Reals. From Coquelicot Require Import Derive Hierarchy.
Open Scope R.
Definition putnam_1972_b2_solution : R -> R -> R := fun s v => 2 * s / v.
Theorem putnam_1972_b2
    (s v : R)
    (valid : R -> (R -> R) -> Prop := fun t : R => fun x : R -> R => (forall s : R, (0 <= s <= t) -> ex_derive x s /\ ex_derive (Derive x) s /\ 
            forall r : R, s <= r /\ (Derive (Derive x) s >= Derive (Derive x) r)) /\ Derive x 0 = 0 /\ Derive x t = v /\ x t - x 0 = s)
    (hs : s > 0)
    (hv : v > 0)
    : (exists x : R -> R, valid (putnam_1972_b2_solution s v) x) /\ forall t : R, t > (putnam_1972_b2_solution s v) -> ~(exists x : R -> R, valid t x).
Proof. Admitted.