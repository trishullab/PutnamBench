Require Import Nat Ensembles Finite_sets ZArith. From mathcomp Require Import fintype.
Theorem putnam_1966_b4
    (m n : nat)
    (S : Ensemble nat)
    (hScard : cardinal _ S (m * n + 1))
    (hSpos : forall i : nat, In _ S i -> i > 0)
    : (exists T : 'I_(m+1) -> nat, (forall i : 'I_(m+1), In _ S (T i)) /\ (forall i j : 'I_(m+1), i <> j -> T i <> T j) /\ (forall i j : 'I_(m+1), i <> j -> ~(Nat.divide (T i) (T j))))
      \/ (exists T : 'I_(n+1) -> nat,  (forall i : 'I_(n+1), In _ S (T i)) /\ (forall i j : 'I_(n+1), i <> j -> T i <> T j) /\ (forall i j : 'I_(n+1), i < j -> (Nat.divide (T i) (T j)))).
Proof. Admitted.
