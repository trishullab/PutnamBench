Require Import Reals Rtrigo_def.
Open Scope R.
Definition putnam_1980_b1_solution (k: R) := k >= 1/2.
Theorem putnam_1980_b1
    : forall (k: R), forall (x: R), cosh x <= exp (k*x*x) <-> putnam_1980_b1_solution k.
Proof. Admitted.
