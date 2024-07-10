Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2023_a3_solution := PI / 2.
Theorem putnam_2023_a3 
    (r : R)
    (hr : r > 0)
    (p : R -> Prop := fun t => exists (f g : R -> R), f 0 = 0 /\ g 0 = 0 /\ forall (x: R), Rabs (Derive f x) <= Rabs (g x) /\ forall (x: R), Rabs (Derive g x) <= Rabs (f x) /\ f t = 0)
    : (forall (t: R), t > 0 -> t < r -> ~ (p t)) <-> r = putnam_2023_a3_solution.
Proof. Admitted.
End putnam_2023_a3.