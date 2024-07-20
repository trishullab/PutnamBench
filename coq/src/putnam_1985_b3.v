Require Import Nat List.
Theorem putnam_1985_b3
    (exactly_equal : ((nat*nat) -> nat) -> (nat*nat) -> Prop := fun a ij => 
        (exists  (l8: list (nat*nat)), length l8 = 8 /\ NoDup l8 /\ (forall (n: (nat*nat)), In n l8 -> a n = a ij)) /\
        (~exists (l9: list (nat*nat)), length l9 = 9 /\ NoDup l9 /\ (forall (n: (nat*nat)), In n l9 -> a n = a ij)))   
    : forall (a: (nat*nat) -> nat),
    (forall (ij: (nat*nat)), exactly_equal a ij) /\ 
    (exists (ij: (nat*nat)), a ij > fst ij*snd ij).
Proof. Admitted.
