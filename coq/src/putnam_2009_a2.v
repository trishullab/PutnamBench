Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2009_a2_solution : (R -> R) := fun x => Rpower 2 (-1 / 12) * (sin (6 * x + PI / 4) / (cos (6 * x + PI / 4)) ^ 2) ^ (1 / 6).
Theorem putnam_2009_a2
    (f g h: R -> R) 
    (a b: R)
    (hab : a < b)
    : forall (x: R), a < x < b -> 
    (ex_derive f x /\ ex_derive g x /\ ex_derive h x /\
    Derive f x = 2 * f (f (g (h x))) + 1 / g (h x) /\ f 0 = 1 /\
    Derive g x = 2 * f (g (g (h x))) + 4 / f (h x) /\ g 0 = 1 /\
    Derive h x = 3 * f (g (h (h x))) + 1 / f (g x) /\ h 0 = 1) ->
    f = putnam_2009_a2_solution.
Proof. Admitted.
