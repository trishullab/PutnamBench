Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2022_a1_solution : R -> R -> Prop := fun a b => (a = 0 /\ b = 0) \/ (Rabs a >= 1) \/ (0 < Rabs a < 1 /\ (b < ln (1 + ((1 - sqrt (1 - a ^2))/ a) ^ 2) - a * (1 - sqrt (1 - a ^ 2) / a) \/ b > ln (1 + ((1 + sqrt (1 - a ^ 2)) / a) ^ 2) - a * (1 + sqrt (1 - a ^ 2) / a))).
Theorem putnam_2022_a1 
    : forall a b : R, (exists! (x: R), a * x + b = ln (1 + x ^ 2) / ln 10) <-> putnam_2022_a1_solution a b. 
Proof. Admitted.
