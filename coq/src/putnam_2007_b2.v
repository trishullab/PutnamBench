Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2007_b2
    (f: R -> R)
    (hf : (forall (x: R), 0 <= x <= 1 -> ex_derive f x /\ continuity_pt (Derive f) x) /\ RInt f 0 1 = 0)
    (max_f_prime_abs: R)
    (heqmax: exists (x: R), 0 <= x <= 1 -> max_f_prime_abs = Rabs (Derive f x))
    (hmaxub: forall (x: R), 0 <= x <= 1 -> max_f_prime_abs >= Rabs (Derive f x))
    : forall (a: R), 0 < a < 1 -> Rabs (RInt f 0 a) <= max_f_prime_abs / 8.
Proof. Admitted.
