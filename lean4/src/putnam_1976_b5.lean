import Mathlib
open BigOperators

open Polynomial Filter Topology ProbabilityTheory MeasureTheory

noncomputable abbrev putnam_1976_b5_solution : ℕ → Polynomial ℤ := sorry
-- fun n => C (Nat.factorial n)
theorem putnam_1976_b5
: ∀ n : ℕ, ∑ k in Finset.range (n + 1), C ((-(1 : ℤ))^k * Nat.choose n k) * (X - (C (k : ℤ)))^n = putnam_1976_b5_solution n :=
sorry
