Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1977_a3_solution (f g: R -> R) : R -> R := fun x => g x - f (x - 3) + f (x - 1) + f (x + 1) - f (x + 3).
Theorem putnam_1977_a3
    (f g h : R -> R)
    (hf : Prop := f = fun x => (h (x + 1) + h (x - 1)) / 2)
    (hg : Prop := g = fun x => (h (x + 4) + h (x - 4)) / 2)
    : h = putnam_1977_a3_solution f g.
Proof. Admitted.
