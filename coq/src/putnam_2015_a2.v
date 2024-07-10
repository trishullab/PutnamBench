Require Import Nat Reals Znumtheory. From mathcomp Require Import div. 
Definition putnam_2015_a2_solution : nat := 181.
Theorem putnam_2015_a2
    (A := fix a (n: nat) : nat :=
        match n with
        | O => 1%nat
        | S O => 2%nat
        | S ((S n'') as n') => sub (4*(a n')) (a n'')
    end)
    : odd putnam_2015_a2_solution = true /\ prime (Z.of_nat putnam_2015_a2_solution) /\ (putnam_2015_a2_solution %| A 2015%nat) = true.
Proof. Admitted. 
