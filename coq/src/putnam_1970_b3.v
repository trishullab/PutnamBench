Section putnam_1970_b3.
Require Import Reals Ensembles. From Coquelicot Require Import Hierarchy.
Theorem putnam_1970_b3
    (T : Ensemble (R * R))
    (a b : R)
    (hab : a < b)
    (hT : forall s : R * R, In (R * R) T s -> a < fst s < b)
    (hSclosed : closed T)
    : closed (fun y : R => exists x : R, In (R * R) T (x, y)).
Proof. Admitted.
End putnam_1970_b3.
