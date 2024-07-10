Require Import Reals GeoCoq.Main.Tarski_dev.Ch16_coordinates_with_functions.
Context `{T2D:Tarski_2D} `{TE:@Tarski_euclidean Tn TnEQD}.
Open Scope R.
Definition putnam_2009_a1_solution := True.
Theorem putnam_2009_a1
    (f: Tpoint -> R)
    : ((forall (A B C D: Tpoint), Square A B C D -> 
    f A + f B + f C + f D = 0) ->
    forall (P : Tpoint), f P = 0) <->
    putnam_2009_a1_solution.
Proof. Admitted.
