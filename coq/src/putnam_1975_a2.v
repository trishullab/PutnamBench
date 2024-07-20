Require Import List Reals Coquelicot.Coquelicot.
Open Scope C.
Definition putnam_1975_a2_solution : R -> R -> Prop := fun a b => b < 1 /\ b - a > -1 /\ b + a > -1.
Theorem putnam_1975_a2
    : forall a b : R, (forall z : C, z * z + a * z + b = 0 -> Cmod z < 1) <-> putnam_1975_a2_solution a b.
Proof. Admitted.
