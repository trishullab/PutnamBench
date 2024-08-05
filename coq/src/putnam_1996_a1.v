Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1996_a1_solution := (1 + sqrt 2) / 2.
Theorem putnam_1996_a1
    (packable : R -> R -> R -> R -> Prop := (fun n1 n2 a1 a2 : R => (n1 + n2) <= Rmax a1 a2 /\ Rmax n1 n2 <= Rmin a1 a2))
    (Aprop : R -> Prop := (fun A : R => forall n1 n2 : R, (n1 > 0 /\ n2 > 0 /\ pow n1 2 + pow n2 2 = 1) -> exists a1 a2 : R, a1 > 0 /\ a2 > 0 /\ a1 * a2 = A /\ packable n1 n2 a1 a2))
    : Aprop putnam_1996_a1_solution /\ (forall A : R, Aprop A -> A >= putnam_1996_a1_solution).
Proof. Admitted.
