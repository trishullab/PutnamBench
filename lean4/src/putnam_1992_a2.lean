import Mathlib
open BigOperators

open Topology Filter

abbrev putnam_1992_a2_solution : ℝ := sorry
-- 1992
theorem putnam_1992_a2
(C : ℝ → ℝ)
(hC : C = fun α ↦ taylorCoeffWithin (fun x ↦ (1 + x) ^ α) 1992 Set.univ 0)
: (∫ y in (0)..1, C (-y - 1) * ∑ k in Finset.Icc (1 : ℕ) 1992, 1 / (y + k) = putnam_1992_a2_solution) :=
sorry
