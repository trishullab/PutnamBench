Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1986_a3_solution := PI / 2.
Theorem putnam_1986_a3
    : Series (fun n =>  1/ atan (pow (INR n) 2 + INR n + 1)) = putnam_1986_a3_solution.
Proof. Admitted.
