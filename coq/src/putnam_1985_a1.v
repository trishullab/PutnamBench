Require Import Ensembles Finite_sets Nat.
Definition putnam_1985_a1_solution := (10, 10, 0, 0).
Theorem putnam_1985_a1
    : let (abc, d) := putnam_1985_a1_solution in let (ab, c) := abc in let (a, b) := ab in 
    cardinal ((Ensemble nat) * (Ensemble nat) * (Ensemble nat)) (fun A => let (A1A2, A3) := A in let (A1, A2) := A1A2 in 
    Union nat (Union nat A1 A2) A3 = fun n => 1 <= n <= 10 /\ Intersection nat (Intersection nat A1 A2) A3 = Empty_set nat) 
    (2 ^ a * 3 ^ b * 5 ^ c * 7 ^ d).
Proof. Admitted.
