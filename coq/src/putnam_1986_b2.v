Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot.
Open Scope C.
Definition putnam_1986_b2_solution (xyz : C*C*C) := xyz = (RtoC 0, RtoC 0, RtoC 0) \/ xyz = (RtoC 1, RtoC 0, RtoC (-1)) \/ xyz = (RtoC (-1), RtoC 1, RtoC 0) \/ xyz = (RtoC 0, RtoC (-1), RtoC 1).
Theorem putnam_1986_b2
    (n: nat)
    (E: Ensemble (C*C*C) := fun '(x, y, z) => x * (x - 1) * 2 * y * z = y * (y - 1) * 2 * z * x /\ y * (y - 1) * 2 * z * x = z * (z - 1) + 2 * x * y) 
    (xyz: C*C*C)
    (x := fst (fst xyz))
    (y := snd (fst xyz))
    (z := snd xyz)
    : cardinal (C*C*C) E n /\ putnam_1986_b2_solution xyz.
Proof. Admitted.
