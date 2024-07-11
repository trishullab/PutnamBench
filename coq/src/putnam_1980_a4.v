Require Import Reals BinInt.
Open Scope Z.
Theorem putnam_1980_a4
    : (forall (a b c: Z), (~ (a = 0 \/ b = 0 /\ c = 0) /\ Z.abs a < 10^6 /\ Z.abs b < 10^6 /\ Z.abs c < 10^6) ->
    Rgt (Rabs (Rplus (Rplus (IZR a) (Rmult (IZR b) (sqrt 2))) (Rmult (IZR c) (sqrt 3)))) (Rpower 10 (-21)) )
    /\ (exists (a b c: Z), 
    Rlt (Rabs (Rplus (IZR a) (Rplus (Rmult (IZR b) (sqrt 2)) (Rmult (IZR c) (sqrt 3))))) (Rpower 10 (-11)) ).    
Proof. Admitted.
