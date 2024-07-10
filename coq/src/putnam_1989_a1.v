Require Import Nat Reals ZArith Znumtheory Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1989_a1_solution (x: R) := x = INR 101.
Theorem putnam_1989_a1
    (a : nat -> R := fun n => sum_n (fun n => if odd n then INR (10^(n-1)) else R0) (2*n+2))
    : forall (n: nat), prime (floor (a n)) -> putnam_1989_a1_solution (a n).
Proof. Admitted.
