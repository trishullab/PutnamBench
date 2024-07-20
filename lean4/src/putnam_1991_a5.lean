import Mathlib
open BigOperators

open Filter Topology

noncomputable abbrev putnam_1991_a5_solution : ℝ := sorry
-- 1 / 3
theorem putnam_1991_a5
(f : Set.Icc (0 : ℝ) 1 → ℝ)
(hf : ∀ y : Set.Icc 0 1, f y = ∫ x in Set.Ioo 0 y, Real.sqrt (x ^ 4 + (y - y ^ 2) ^ 2))
: (∃ y : Set.Icc 0 1, f y = putnam_1991_a5_solution) ∧ (∀ y : Set.Icc 0 1, f y ≤ putnam_1991_a5_solution) :=
sorry
