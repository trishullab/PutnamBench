Require Import BinNums Nat NArith.
Definition putnam_2023_b2_solution := 3.
Theorem putnam_2023_b2
    (k:= fix count_ones (n : positive) : nat :=
        match n with
        | xH => 1
        | xO n' => count_ones n'
        | xI n' => 1 + count_ones n'
    end)
    : (forall (n: nat), k (Pos.of_nat (2023*n)) >= putnam_2023_b2_solution) /\
    (exists (n: nat), k (Pos.of_nat (2023*n)) = putnam_2023_b2_solution).
Proof. Admitted.
