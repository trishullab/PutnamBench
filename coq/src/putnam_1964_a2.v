Section putnam_1964_a2.
Require Import Reals Ensembles. From Coquelicot Require Import RInt Coquelicot.
Open Scope R.
Definition putnam_1964_a2_solution := fun a : R => Empty_set (R -> R).
Theorem putnam_1964_a2
    (alpha : R)
    : putnam_1964_a2_solution alpha = fun (f : R -> R) => (forall (x : R), (0 <= x <= 1) -> (f x > 0 /\ continuity_pt f x)) /\ RInt f 0 1 = 1 /\ RInt (fun x : R => x * f x) 0 1 = alpha /\ RInt (fun x : R => x^2 * f x) 0 1 = alpha^2.
Proof. Admitted.
End putnam_1964_a2.