Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1986_a1_solution := 18.
Theorem putnam_1986_a1
    (f : R -> R := fun x => pow x 3)
    (on_S : R -> Prop := fun x => pow x 4 - 13 * pow x 2 + 36 <= 0)
    : exists (m: R), 
    (forall (x: R), on_S x -> m >= f x) /\
    (exists (x: R), on_S x -> m = f x) 
    <-> m = putnam_1986_a1_solution.
Proof. Admitted.
