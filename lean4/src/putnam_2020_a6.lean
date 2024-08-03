import Mathlib
open BigOperators

open Filter Topology Set

noncomputable abbrev putnam_2020_a6_solution : ℝ := sorry
-- Real.pi / 4
theorem putnam_2020_a6
(f : ℤ → (ℝ → ℝ))
(hf : f = fun N : ℤ => fun x : ℝ =>
∑ n in Finset.Icc 0 N, (N + 1/2 - n)/((N + 1)*(2*n + 1)) * Real.sin ((2*n + 1)*x))
: (∀ N > 0, ∀ x : ℝ, f N x ≤ putnam_2020_a6_solution) ∧
∀ M : ℝ, (∀ N > 0, ∀ x : ℝ, f N x ≤ M) → M ≥ putnam_2020_a6_solution :=
sorry
