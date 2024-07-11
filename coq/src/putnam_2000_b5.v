Require Import ZArith Ensembles Finite_sets.
Theorem putnam_2000_b5
    (S : nat -> Ensemble Z)
    (hSfin : forall n : nat, exists m : nat, cardinal _ (S n) m)
    (hSpos : forall n : nat, forall s : Z, In _ (S n) s -> Z.gt s 0)
    (hSdef : forall n : nat, forall a : Z, (In _ (S (n + 1)) a) <-> ((In _ (S n) (Z.sub a 1) /\ ~ (In _ (S n) a)) \/ (In _ (S n) a /\ ~ (In _ (S n) (Z.sub a 1)))))
    : forall n : nat, exists N : nat, N >= n /\ Same_set _ (S N) (Union _ (S 0) (fun i : Z => exists a : Z, In _ (S 0) a /\ i = Z.add a (Z.of_nat N))).
Proof. Admitted.
