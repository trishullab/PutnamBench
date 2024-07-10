Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2011_b3_solution := True.
Theorem putnam_2011_b3
    (f g : R -> R)
    (hfg : forall (a b : R), (a < 0 < b /\ forall (x: R), a < x < b -> g x > 0 /\ continuity_pt g 0 /\ ex_derive f (g 0) /\ ex_derive (fun x => f x / g x) 0))
    : ex_derive f 0 <-> putnam_2011_b3_solution.
Proof. Admitted.
