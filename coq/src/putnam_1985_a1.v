Require Import Ensembles List Finite_sets Nat Coquelicot.Coquelicot.
Import ListNotations.
Definition putnam_1985_a1_solution := (10, 10, 0, 0).
Theorem putnam_1985_a1
    : let E: Ensemble (list (Ensemble nat)) := fun A =>
        match A with
        | A1 :: A2 :: A3 :: _ =>
            Union nat (Union nat A1 A2) A3 = fun x => 1 <= x <= 11 /\ Intersection nat (Intersection nat A1 A2) A3 = Empty_set nat
        | _ => True
    end in 
    exists (a b c d : nat), cardinal (list (Ensemble nat)) E (2 ^ a * 3 ^ b * 5 ^ c * 7 ^ d) <->
    (a, b, c, d) = putnam_1985_a1_solution.
Proof. Admitted.
