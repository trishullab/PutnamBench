Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot.
Open Scope C.
Definition putnam_1986_b2_solution (xyz : C*C*C) := xyz = (RtoC 0, RtoC 0, RtoC 0) \/ xyz = (RtoC 1, RtoC 0, RtoC (-1)) \/ xyz = (RtoC (-1), RtoC 1, RtoC 0) \/ xyz = (RtoC 0, RtoC (-1), RtoC 1).
Theorem putnam_1986_b2
    : forall T : C * C * C, putnam_1986_b2_solution T <-> exists '(x, y, z), T = (x - y, y - z, z - x) /\ x * (x - 1) + 2 * y * z = y * (y - 1) + 2 * z * x /\ y * (y - 1) + 2 * z * x = z * (z - 1) + 2 * x * y.
Proof. Admitted.
