import Mathlib
open BigOperators

open Filter Topology Set

abbrev putnam_2010_b4_solution : Set (Polynomial ℝ × Polynomial ℝ) := sorry
-- {(p, q) : Polynomial ℝ × Polynomial ℝ | p.degree ≤ 1 ∧ q.degree ≤ 1 ∧ p.coeff 0 * q.coeff 1 - p.coeff 1 * q.coeff 0 = 1}
theorem putnam_2010_b4
(p q : Polynomial ℝ)
: (∀ x : ℝ, p.eval x * q.eval (x + 1) - p.eval (x + 1) * q.eval x = 1) ↔ (p, q) ∈ putnam_2010_b4_solution :=
sorry
