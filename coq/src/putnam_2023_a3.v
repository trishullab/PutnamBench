Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2023_a3_solution := PI / 2.
Theorem putnam_2023_a3 
    (p : R -> Prop := fun t => exists (f g : R -> R), f 0 > 0 /\ g 0 = 0 /\ (forall (x : R), ex_derive f x /\ ex_derive g x) /\ (forall (x: R), (Rabs (Derive f x) <= Rabs (g x) /\ Rabs (Derive g x) <= Rabs (f x))) /\ f t = 0)
    : (putnam_2023_a3_solution > 0 /\ p putnam_2023_a3_solution) /\ (forall (t: R), t > 0 -> t < putnam_2023_a3_solution -> ~ (p t)).
Proof. Admitted.