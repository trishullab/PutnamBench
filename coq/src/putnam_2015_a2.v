Require Import Nat Reals Znumtheory BinInt. From mathcomp Require Import div. 
Definition putnam_2015_a2_solution : nat := 181.
Theorem putnam_2015_a2
    (A := fix a (n: nat) : Z :=
        match n with
        | O => 1%Z
        | S O => 2%Z
        | S ((S n'') as n') => Z.sub (4*(a n')) (a n'')
    end)
    : odd putnam_2015_a2_solution = true /\ prime (Z.of_nat putnam_2015_a2_solution) /\ ((Z.of_nat putnam_2015_a2_solution) | A 2015%nat).
Proof. Admitted. 
