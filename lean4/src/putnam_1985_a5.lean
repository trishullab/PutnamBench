import Mathlib
open BigOperators

open Set Filter Topology Real

abbrev putnam_1985_a5_solution : Set ℕ := sorry
-- {3, 4, 7, 8}
theorem putnam_1985_a5
(I : ℕ → ℝ)
(hI : I = fun (m : ℕ) ↦ ∫ x in (0)..(2 * Real.pi), ∏ k in Finset.Icc 1 m, cos (k * x))
: ({m ∈ Finset.Icc 1 10 | I m ≠ 0} = putnam_1985_a5_solution) :=
sorry
