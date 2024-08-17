Require Import Reals Ranalysis Coquelicot.Coquelicot.
Definition putnam_1986_b4_solution := True.
Theorem putnam_1986_b4
    (G : R -> R)
    (hGeq : forall (r: R), exists (m n: Z), G r = Rabs (r - sqrt (IZR (m ^ 2 + 2 * n ^ 2))))
    (hGlb : forall (r: R), forall (m n: Z), G r <= Rabs (r - sqrt (IZR (m ^ 2 + 2 * n ^ 2))))
    : filterlim G (Rbar_locally p_infty) (locally 0) <-> putnam_1986_b4_solution.
Proof. Admitted.
