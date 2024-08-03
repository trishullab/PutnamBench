import Mathlib
open BigOperators

open Filter Topology Nat

abbrev putnam_1990_a4_solution : ℕ := sorry
-- 3
theorem putnam_1990_a4
: sInf {n : ℕ | ∃ S : Set (EuclideanSpace ℝ (Fin 2)), S.encard = n ∧ ∀ Q : EuclideanSpace ℝ (Fin 2), ∃ P ∈ S, Irrational (dist P Q)} = putnam_1990_a4_solution :=
sorry
