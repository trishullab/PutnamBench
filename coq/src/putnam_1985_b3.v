Require Import Nat Ensembles Finite_sets.
Theorem putnam_1985_b3
    (a : nat -> nat -> nat)
    (apos : forall m n : nat, a m n > 0)
    (ha : forall k : nat, k > 0 -> cardinal (nat * nat) (fun t => let (m, n) := t in m > 0 /\ n > 0 /\ a m n = k) 8)
    : exists m n : nat, m > 0 /\ n > 0 /\ a m n > m * n.
Proof. Admitted.
