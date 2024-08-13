Require Import Nat ZArith Reals Coquelicot.Coquelicot.
Definition putnam_1983_a5_solution := True.
Theorem putnam_1983_a5
    : (exists a : R, a > 0 /\ forall n : nat, gt n 0 -> Z.Even (floor (a^n) - Z.of_nat n)) <-> putnam_1983_a5_solution.
Proof. Admitted.
