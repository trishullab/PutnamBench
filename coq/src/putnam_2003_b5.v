Require Import Reals 
GeoCoq.Main.Tarski_dev.Ch16_coordinates_with_functions
GeoCoq.Axioms.Definitions
GeoCoq.Main.Highschool.triangles.
Context `{T2D:Tarski_2D} `{TE:@Tarski_euclidean Tn TnEQD}.
Open Scope R.
Definition putnam_2003_b5_solution (pt_to_R : Tpoint -> (R * R)) (dist : Tpoint -> Tpoint -> R) (P Op : Tpoint) := sqrt 3 * (1 - (dist P Op) ^ 2 - 1).
Theorem putnam_2003_b5
    (pt_to_R : Tpoint -> (R * R))
    (F_to_R : F -> R)
    (dist : Tpoint -> Tpoint -> R := fun A B => let (a, b) := pt_to_R A in let (c, d) := pt_to_R B in dist_euc a b c d)
    (Triangle : Tpoint -> Tpoint -> Tpoint -> Prop := fun x y z => ~ Col x y z) (* copied from GeoCoq.Axioms.euclidean_axioms *)
    (A B C Op Op' P: Tpoint)
    (fixpoint : dist Op Op' = R1)
    (hABC : OnCircle A Op Op' /\ OnCircle B Op Op' /\ OnCircle C Op Op')
    (hABC' : Main.Highschool.triangles.equilateral A B C)
    (hp : InCircle P Op Op')
    (a : R := dist P A)
    (b : R := dist P B)
    (c : R := dist P C)
    : exists (A' B' C' : Tpoint) (D: Cs O E A' B' C'),
    Triangle A' B' C' /\ dist A' B' = a /\ dist B' C' = b /\ dist C' A' = c /\
    F_to_R (signed_area A' B' C' D A' B' C') = (putnam_2003_b5_solution pt_to_R dist P Op).
Proof. Admitted.
End putnam_2003_b5.
