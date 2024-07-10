Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1980_a3_solution := PI/4.
Theorem putnam_1980_a3
    (f : R -> R := fun x => 1/(1 + Rpower (tan x) (sqrt 2)))
    : RInt f 0 PI/2 = putnam_1980_a3_solution.
Proof. Admitted.
