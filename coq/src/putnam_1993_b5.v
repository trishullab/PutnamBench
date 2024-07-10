Require Import ZArith Reals Coquelicot.Coquelicot. From mathcomp Require Import fintype.
Theorem putnam_1993_b5
    (pdists : ('I_4 -> (R * R)) -> Prop)
    (hpdists : forall p : 'I_4 -> (R * R), pdists p = (forall i j : 'I_4, i <> j -> (exists k : Z, IZR k = norm (fst (p i) - fst (p j), (snd (p i) - snd (p j))) /\ Z.odd k = true)))
    : ~ (exists p : 'I_4 -> (R * R), pdists p).
Proof. Admitted.
