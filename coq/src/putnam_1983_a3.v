Require Import Nat ZArith Znumtheory.
Open Scope nat_scope.
Fixpoint nat_sum (a : nat -> nat) (k : nat) : nat := 
    match k with
    | O => a O
    | S k' => a k + nat_sum a k'
    end.
Theorem putnam_1983_a3
    (p : nat)
    (hp : odd p = true /\ prime (Z.of_nat p))
    (f : nat -> nat := fun n => nat_sum (fun i => (i+1) * n^i) (p-2))
    : forall (a b : nat), a < p /\ b < p /\ a <> b -> (f a) mod p <> (f b) mod p.
Proof. Admitted.
