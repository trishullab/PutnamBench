Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2014_b2_solution := ln (4 / 3) / ln 10.
Theorem putnam_2014_b2
    (m: R)
    (f: R -> R)
    (hm : exists (f: R -> R) (x: R), 1 <= x <= 3 /\ -1 <= f x <= 1 /\ RInt f 0 3 = 0 -> RInt (fun x => f x / x) 1 3 = m)
    (hmub : forall (x: R), 1 <= x <= 3 /\ -1 <= f x <= 1 /\ RInt f 0 3 = 0 -> RInt (fun x => f x / x) 1 3 <= m)
    : m = putnam_2014_b2_solution.
Proof. Admitted.
