Require Import Reals Rgeom ZArith GeoCoq.Main.Tarski_dev.Ch16_coordinates_with_functions.
Context `{T2D:Tarski_2D} `{TE:@Tarski_euclidean Tn TnEQD}.
Open Scope R.
Definition putnam_2010_b2_solution := 3.
Theorem putnam_2010_b2
    (pt_to_R : Tpoint -> (R * R))
    (int_val : Tpoint -> Prop := fun P => exists (x y : Z), pt_to_R P = (IZR x, IZR y))
    (dist : Tpoint -> Tpoint -> R := fun A B => let (a, b) := pt_to_R A in let (c, d) := pt_to_R B in dist_euc a b c d)
    (p : Tpoint -> Tpoint -> Tpoint -> Prop :=
        fun A B C => ~ Col A B C /\ int_val A /\ int_val B /\ int_val C /\
        exists (z: Z), dist A B = IZR z /\ dist A C = IZR z /\ dist B C = IZR z)
    (m : Z)
    (hm : exists (A B C: Tpoint), p A B C)
    (hmlb : forall (A B C: Tpoint), p A B C -> dist A B >= IZR m)
    : IZR m = putnam_2010_b2_solution.
Proof. Admitted.
