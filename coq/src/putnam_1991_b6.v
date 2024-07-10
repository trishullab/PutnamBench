Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1991_b6_solution (a b : R) := IZR (floor (ln (a / b))). 
Theorem putnam_1991_b6 
    (a b: R)
    (hab : a > 0 /\ b > 0)
    (ineq_holds : R -> Prop := fun c => forall (u x: R), 0 < Rabs u <= c /\ 0 < x < 1 -> Rpower a x * Rpower b (1 - x) <= a * sinh (u * x) / sinh u + b * sinh (1 - x) / sinh u)
    (c: R)
    (hc : ineq_holds c)
    (hcub : forall (x: R), ineq_holds x -> x <= c)
    : c = putnam_1991_b6_solution a b.
Proof. Admitted.
