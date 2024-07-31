Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2011_b3_solution := True.
Theorem putnam_2011_b3
    : (forall (f g : R -> R), g 0 <> 0 /\ continuity_pt g 0 /\ ex_derive (fun x : R => f x * g x) 0 /\ ex_derive (fun x : R => f x / g x) 0 -> ex_derive f 0) <-> putnam_2011_b3_solution.
Proof. Admitted.
