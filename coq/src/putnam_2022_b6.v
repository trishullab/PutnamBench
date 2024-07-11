Require Import Reals.
Open Scope R.
Definition putnam_2022_b6_solution := fun (f : R -> R) =>
    exists (c : R), c >= 0 /\ forall (x : R), x >= 0 /\ f x >= 0 -> f x = 1 / (1 + c * x).
Theorem putnam_2022_b6
    (p : (R -> R) -> Prop := fun f : R -> R => forall (x y: R), x > 0 /\ y > 0 /\ f x > 0 /\ f y > 0 ->
        f (x * f y) + f (y * f x) = 1 + f (x + y))
    : forall f : R -> R, p f <-> putnam_2022_b6_solution f.
Proof. Admitted. 
