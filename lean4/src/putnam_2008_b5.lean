import Mathlib
open BigOperators

open Filter Topology Set Nat

abbrev putnam_2008_b5_solution : Set (ℝ → ℝ) := sorry
-- {fun (x : ℝ) => x + n | n : ℤ} ∪ {fun (x : ℝ) => -x + n | n : ℤ}
theorem putnam_2008_b5
(fqsat : (ℝ → ℝ) → ℚ → Prop)
(hfqsat : fqsat = fun (f : ℝ → ℝ) (q : ℚ) => ContDiff ℝ 1 f ∧ (∃ p : ℚ, p = f q ∧ p.den = q.den))
: ∀ f : (ℝ → ℝ), (∀ q : ℚ, fqsat f q) ↔ f ∈ putnam_2008_b5_solution :=
sorry
