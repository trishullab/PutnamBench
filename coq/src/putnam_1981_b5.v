Require Import BinNums Nat NArith Coquelicot.Coquelicot.

Local Coercion Raxioms.INR : nat >-> Rdefinitions.R.

Definition putnam_1981_b5_solution := True.
Theorem putnam_1981_b5
    (f := fix count_ones (n : positive) : nat :=
        match n with
        | xH => 1
        | xO n' => count_ones n'
        | xI n' => 1 + count_ones n'
    end)
    (k := Series (fun n => Rdefinitions.Rdiv (f (Pos.of_nat n)) (n + pow n 2)))
    : exists (a b: nat), Rtrigo_def.exp k = Rdefinitions.Rdiv a b <-> putnam_1981_b5_solution.
Proof. Admitted.
