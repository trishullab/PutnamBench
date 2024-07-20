Require Import ZArith Ensembles Reals. From Coquelicot Require Import Hierarchy.
Definition putnam_1963_b2_solution : Prop := True.
Theorem putnam_1963_b2
    (T : Ensemble R := fun x => exists m n : Z, x = (Rpower 2 (IZR m)) * (Rpower 3 (IZR n)))
    (P : Ensemble R := fun x => x > 0)
    : ((forall A : Ensemble R, Included R A P -> open A -> A <> Empty_set R -> Intersection R A T <> Empty_set R) <-> putnam_1963_b2_solution).
Proof. Admitted.