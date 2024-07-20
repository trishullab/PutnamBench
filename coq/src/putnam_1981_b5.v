Require Import BinNums Nat NArith Coquelicot.Coquelicot.
Definition putnam_1981_b5_solution := True.
Theorem putnam_1981_b5
    (f := fix count_ones (n : positive) : nat :=
        match n with
        | xH => 1
        | xO n' => count_ones n'
        | xI n' => 1 + count_ones n'
    end)
    (k := Series (fun n => Rdefinitions.Rdiv (Raxioms.INR (f (Pos.of_nat n))) (Raxioms.INR (n + pow n 2))))
    : exists (a b: nat), Rtrigo_def.exp k = Rdefinitions.Rdiv (Raxioms.INR a) (Raxioms.INR b) <-> putnam_1981_b5_solution.
Proof. Admitted.
