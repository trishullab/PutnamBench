Require Import Nat.
Open Scope nat_scope.
Definition putnam_1991_b1_solution (A: nat) := exists (m: nat), A = pow m 2.
Theorem putnam_1991_b1
    (eS : nat -> nat := fun n => sub n (pow (sqrt n) 2))
    (a_seq := fix a (A k: nat) :=
        match k with
        | O => A
        | S k' => a A k' + eS (a A k')
    end)
    (A : nat)
    (hA : gt A 0)
    : (exists K c : nat, forall k : nat, k >= K -> a_seq A k = c) <-> putnam_1991_b1_solution A.
Proof. Admitted.
