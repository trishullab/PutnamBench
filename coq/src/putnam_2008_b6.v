Require Import Ensembles Finite_sets Reals. From mathcomp Require Import div fintype seq ssrbool perm.
Theorem putnam_2008_b6
    (n k : nat)
    (hn : n > 0)
    (hk : k > 0)
    (klimited : {perm 'I_n} -> Prop := fun sigma => forall (i: 'I_n), Rle (Rabs (INR (nat_of_ord (sigma i)) - INR i)) (INR k))
    (E : Ensemble {perm 'I_n} := fun p =>  klimited p)
    : (exists (sz: nat), cardinal {perm 'I_n} E sz /\ Nat.odd sz) <-> n mod (2 * k + 1) = 0 \/ n mod (2 * k + 1) = 1.
Proof. Admitted.