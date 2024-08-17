Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1982_a3_solution := PI / 2 * ln PI.
Theorem putnam_1982_a3
    (f : R -> R := fun x => (atan (PI * x) - atan x) / x)
    : Lim (fun n => RInt f 0 n) p_infty = putnam_1982_a3_solution.
Proof. Admitted.
