Require Import Nat Coquelicot.Coquelicot.
Open Scope nat_scope.
Definition putnam_1991_b1_solution (A: nat) := exists (m: nat), A = pow m 2.
Theorem putnam_1991_b1
    (eS : nat -> nat := fun n => sub n (pow (sqrt n) 2))
    (a_seq := fix a (A k: nat) :=
        match k with
        | O => A
        | S k' => a A k' + eS (a A k')
    end)
    : forall (A: nat), A > 0 -> Lim_seq (fun k => Raxioms.INR (a_seq A k)) = Rdefinitions.R0 <-> putnam_1991_b1_solution A.
Proof. Admitted.
