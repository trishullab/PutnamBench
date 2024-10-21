import Mathlib

open Filter Topology Nat

abbrev putnam_1990_a4_solution : ℕ := sorry
-- 3
/--
Consider a paper punch that can be centered at any point of the plane and that, when operated, removes from the plane precisely those points whose distance from the center is irrational. How many punches are needed to remove every point?
-/
theorem putnam_1990_a4
: sInf {n : ℕ | ∃ S : Set (EuclideanSpace ℝ (Fin 2)), S.encard = n ∧ ∀ Q : EuclideanSpace ℝ (Fin 2), ∃ P ∈ S, Irrational (dist P Q)} = putnam_1990_a4_solution :=
sorry
