Require Import Reals ZArith Coquelicot.Coquelicot.
Theorem putnam_1971_a3
    (a b c : Z * Z)
    (r : R)
    (habcneq : a <> b /\ b <> c /\ c <> a)
    (hR : r > 0)
    (oncircle : (R * R) -> R -> (R * R) -> Prop := fun C rad p => (fst C - fst p)^2 + (snd C - snd p)^2 = rad^2)
    (hcircle : exists C : R * R, oncircle (IZR (fst a), IZR (snd a)) r C /\ oncircle (IZR (fst b), IZR (snd b)) r C /\ oncircle (IZR (fst c), IZR (snd c)) r C)
    : (norm (2,2) * sqrt (IZR ((fst a - fst b)^2 + (snd a - snd b)^2)) * sqrt (IZR ((fst b - fst c)^2 + (snd b - snd c)^2)) * sqrt (IZR ((fst c - fst a)^2 + (snd c - snd a)^2))) >= 2 * r.  
Proof. Admitted.
