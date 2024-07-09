import Mathlib
open BigOperators

open Filter Topology Set Nat

abbrev putnam_2008_b5_solution : Set (ℝ → ℝ) := sorry
-- {fun (x : ℝ) => x + n | n : ℤ} ∪ {fun (x : ℝ) => -x + n | n : ℤ}
theorem putnam_2008_b5
(fqsat : (ℝ → ℝ) → ℚ → Prop := fun f q => ContDiff ℝ 1 f ∧ (∃ p : ℚ, p = f q ∧ p.den = q.den))
(fsat : (ℝ → ℝ) → Prop := fun f => ∀ q : ℚ, fqsat f q)
: ∀ f : (ℝ → ℝ), fsat f ↔ f ∈ putnam_2008_b5_solution :=
sorry
