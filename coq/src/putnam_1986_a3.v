Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1986_a3_solution := PI / 2.
Theorem putnam_1986_a3
    (cot : R -> R)
    (fcot : cot = fun t => cos t / sin t)
    (arccot : R -> R)
    (harccot : forall t : R, t >= 0 -> 0 < arccot t <= PI / 2 /\ cot (arccot t) = t)
    : Series (fun n => arccot (pow (INR n) 2 + INR n + 1)) = putnam_1986_a3_solution.
Proof. Admitted.
