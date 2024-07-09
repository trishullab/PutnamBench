import Mathlib
open BigOperators

open Filter Topology

abbrev putnam_1991_a2_solution : Prop := sorry
-- False
theorem putnam_1991_a2
(n : ℕ)
(npos : n ≥ 1)
: (∃ A B : Matrix (Fin n) (Fin n) ℝ, A ≠ B ∧ A ^ 3 = B ^ 3 ∧ A ^ 2 * B = B ^ 2 * A ∧ Nonempty (Invertible (A ^ 2 + B ^ 2))) ↔ putnam_1991_a2_solution :=
sorry
