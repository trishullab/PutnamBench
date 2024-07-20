Require Import Nat List Ensembles Finite_sets Reals.
Theorem putnam_2018_b6
    (E: Ensemble (list nat) := fun l => length l = 2018 /\ 
        forall (n: nat), (List.In n l) -> (n = 1 \/ n = 2 \/ n = 3 \/ n = 4 \/ n = 5 \/ n = 6 \/ n = 10) /\
        fold_left Nat.add l 0 = 3860
    )
    (n : nat)
    : cardinal (list nat) E n -> Rle (INR n) (Rmult (Rpower 2 3860) (Rpower (Rdiv (INR 2018) (INR 2048)) 2018)).
Proof. Admitted.
