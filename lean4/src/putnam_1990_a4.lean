import Mathlib
open BigOperators

open Filter Topology Nat

abbrev putnam_1990_a4_solution : ℕ := sorry
-- 3
theorem putnam_1990_a4
: sInf {n : ℕ | ∃ S : Set (Fin 2 → ℝ), S.encard = n ∧ ∀ Q : Fin 2 → ℝ, ∃ P ∈ S, Irrational (Euclidean.dist P Q)} = putnam_1990_a4_solution :=
sorry
