Require Import Reals Rgeom ZArith.
Open Scope R.
Definition putnam_2010_b2_solution := 3.
Theorem putnam_2010_b2
    (dist : (R * R) -> (R * R) -> R := fun A B => let (a, b) := A in let (c, d) := B in dist_euc a b c d)
    (int_val : (R * R) -> Prop := fun P => exists (x y : Z), P = (IZR x, IZR y))
    (noncollinear: (R * R) -> (R * R) -> (R * R) -> Prop := fun A B C => let (a, b) := A in let (c, d) := B in let (e, f) := C in
        ~exists (s t : R), (s * (c - a) + t * (e - a), s * (d - b) + t * (f - b)) = (0, 0))
    (p : (R * R) -> (R * R) -> (R * R) -> Prop :=
        fun A B C => noncollinear A B C /\ int_val A /\ int_val B /\ int_val C /\
        (exists (x : Z), dist A B = IZR x) /\ (exists (y : Z), dist A C = IZR y) /\ (exists (z : Z), dist B C = IZR z))
    (m : R)
    (hm : exists (A B C: R * R), p A B C /\ dist A B = m)
    (hmlb : forall (A B C: R * R), p A B C -> dist A B >= m)
    : m = putnam_2010_b2_solution.
Proof. Admitted.
