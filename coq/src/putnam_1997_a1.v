Require Import Reals Rgeom ZArith 
GeoCoq.Main.Tarski_dev.Ch16_coordinates_with_functions 
GeoCoq.Main.Annexes.midpoint_theorems
GeoCoq.Main.Highschool.circumcenter.
Context `{T2D:Tarski_2D} `{TE:@Tarski_euclidean Tn TnEQD}.
Open Scope R.
Definition putnam_1997_a1_solution := 28.
Theorem putnam_1997_a1
    (pt_to_R : Tpoint -> (R * R))
    (dist : Tpoint -> Tpoint -> R := fun A B => let (a, b) := pt_to_R A in let (c, d) := pt_to_R B in dist_euc a b c d)
    (A B C : Tpoint)
    (Hp Op Mp Fp : Tpoint)
    (l1 : dist Hp Op = 11)
    (l2 : dist Op Mp = 5)
    (s : Rectangle Hp Op Mp Fp)
    (hHp : Bet A Fp Hp)
    (hOp : is_circumcenter Op A B C)
    (hMp : Midpoint B C Mp)
    (hFp : Perp A C B Fp /\ Col A C Fp)
    : dist B C = putnam_1997_a1_solution.
Proof. Admitted.
