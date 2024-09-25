Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot.

Local Coercion IZR : Z >-> R.

Theorem putnam_1971_a1
    (S : Ensemble (Z * Z * Z))
    (hS : cardinal _ S 9)
    (L : (Z * Z * Z) * (Z * Z * Z) -> Ensemble (R * R * R)
       := fun '((a,b,c), (d,e,f)) => fun (x : R * R * R) => (exists t : R, 0 < t < 1 /\ x = (t * a + (1 - t) * d, t * b + (1 - t) * e, t * c + (1 - t) * f)))
    : exists x y z : Z, exists P Q : Z * Z * Z, In _ S P /\ In _ S Q /\ P <> Q /\ In _ (L (P,Q)) (IZR x, IZR y, IZR z).
Proof. Admitted.
