Section putnam_1964_a6.
Require Import Reals Ensembles QArith. From Coquelicot Require Import Coquelicot.
Open Scope R.
Theorem putnam_1964_a6
    (T : Ensemble R)
    (pairs : Ensemble (R * R) := fun p => In R T (fst p) /\ In R T (snd p) /\ fst p < snd p)
    (distance : R * R -> R := fun p => snd p - fst p) 
    (hrepdist : forall p : R * R, In (R * R) pairs p -> ((exists m : R * R, (In (R * R) pairs m /\ distance m > distance p)) -> exists q : R * R, In (R * R) pairs q /\ q <> p /\ distance p = distance q))
    : forall p q : R * R, (In (R * R) pairs p /\ In (R * R) pairs q /\ q <> p) -> exists r : Q, distance p / distance q = Q2R r.
Proof. Admitted.
End putnam_1964_a6.