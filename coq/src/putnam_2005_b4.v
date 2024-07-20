Require Import List Ensembles Finite_sets ZArith.
Open Scope Z.
Theorem putnam_2005_b4 
    (Absl := fix absl (l : list Z) : list Z :=
        match l with
        | nil => nil
        | h :: t => Z.abs h :: t
    end)
    : forall (m n: nat), forall (E1 E2: Ensemble (list Z)) (l1 l2: list Z),
    length l1 = n /\ length l2 = m /\ (E1 l1 <-> fold_left Z.add (Absl l1) 0 <= Z.of_nat m) /\ (E2 l2 <-> fold_left Z.add (Absl l2) 0 <= Z.of_nat n) <-> exists (a: nat), cardinal (list Z) E1 a /\ cardinal (list Z) E2 a.
Proof. Admitted.
