Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_2006_b5_solution := 1 / 16.
Theorem putnam_2006_b5
    (I : (R -> R) -> R := fun f => RInt (fun x => x ^ 2 * f x) 0 1)
    (J : (R -> R) -> R := fun f => RInt (fun x => x * (f x) ^ 2) 0 1)
    (m: R)
    (hm : exists (f: R -> R), (forall (x: R), 0 <= x <= 1 -> continuity_pt f x) /\ m = I f - J f)
    (hmub : forall (f: R -> R), (forall (x: R), 0 <= x <= 1 -> continuity_pt f x) -> m >= I f - J f)
    : m = putnam_2006_b5_solution.
Proof. Admitted.
