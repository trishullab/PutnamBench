import Mathlib
open BigOperators

open Topology MvPolynomial Filter Set

abbrev putnam_2009_b2_solution : Set ℝ := sorry
-- Ioc (1 / 3) 1
theorem putnam_2009_b2
: ({c : ℝ | ∃ s : ℕ → ℝ, s 0 = 0 ∧ StrictMono s ∧ (∃ n : ℕ, s n = 1 ∧ ((∑ i in Finset.range n, (s (i + 1)) ^ 3 - (s i) * (s (i + 1)) ^ 2) = c))} = putnam_2009_b2_solution) :=
sorry
