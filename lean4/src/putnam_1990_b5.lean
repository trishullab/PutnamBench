import Mathlib
open BigOperators

open Filter Topology Nat

abbrev putnam_1990_b5_solution : Prop := sorry
-- True
theorem putnam_1990_b5
(anpoly : (ℕ → ℝ) → ℕ → Polynomial ℝ)
(hanpoly : ∀ (a : ℕ → ℝ) (n : ℕ), (anpoly a n).degree = n ∧ (∀ i : Fin (n + 1), (anpoly a n).coeff i = a i))
: (∃ a : ℕ → ℝ, (∀ i : ℕ, a i ≠ 0) ∧ (∀ n ≥ 1, {r : ℝ | (anpoly a n).eval r = 0}.encard = n)) ↔ putnam_1990_b5_solution :=
sorry
