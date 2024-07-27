Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_2006_b2
    (n : nat)
    (npos : gt n 0)
    (X : list R)
    (hXcard : length X = n)
    : exists (presS: R -> Prop) (m: Z) (S: list R), 
    (neq (length S) 0) /\ NoDup S /\ (forall (x: R), In x S <-> (In x X /\ presS x)) /\
    (Rabs (IZR m + (fold_left Rplus S 0)) <= 1 / INR (n + 1)).
Proof. Admitted.
