import Mathlib
open BigOperators

open Filter Topology Nat

abbrev putnam_1990_a5_solution : Prop := sorry
-- False
theorem putnam_1990_a5
: (∀ n ≥ 1, ∀ A B : Matrix (Fin n) (Fin n) ℝ, A * B * A * B = 0 → B * A * B * A = 0) ↔ putnam_1990_a5_solution :=
sorry
