Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1996_a1_solution := (1 + sqrt 2) / 2.
Theorem putnam_1996_a1 
    (minA : R)
    (packable : R -> R -> R -> R -> Prop := fun n1 n2 a1 a2 => (n1 + n2) <= Rmax a1 a2 /\ Rmax n1 n2 <= Rmin a1 a2)
    (hminA : R -> R -> R -> R -> Prop := fun n1 n2 a1 a2 => a1 * a2 = minA /\ packable n1 n2 a1 a2)
    (hminAlb : R -> R -> R -> R -> Prop :=  fun n1 n2 a1 a2 => forall (A: R), a1 * a2 = A /\ (packable n1 n2 a1 a2 -> minA <= A))
    : (forall (n1 n2: R), pow n1 2 + pow n2 2 = 1 -> exists a1 a2 : R, hminA n1 n2 a1 a2 /\ hminAlb n1 n2 a1 a2) <-> minA =putnam_1996_a1_solution.
Proof. Admitted.
