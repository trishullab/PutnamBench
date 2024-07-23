Require Import List Ensembles Finite_sets ZArith.
Theorem putnam_2005_b4 
    (Absl := fix absl (l : list Z) : list Z :=
        match l with
        | nil => nil
        | h :: t => Z.abs h :: absl t
    end)
    (m n : nat)
    (mnpos : m > 0 /\ n > 0)
    (f : nat -> nat -> nat)
    (hf : forall m' n' : nat, (m' > 0 /\ n' > 0) -> cardinal (list Z) (fun x => length x = n' /\ Z.le (fold_left Z.add (Absl x) 0%Z) (Z.of_nat m')) (f m' n'))
    : f m n = f n m.
Proof. Admitted.
