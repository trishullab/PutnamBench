import Mathlib

open Set Filter Topology

abbrev putnam_1988_b2_solution : Prop := sorry
-- True
/--
Prove or disprove: If $x$ and $y$ are real numbers with $y \geq 0$ and $y(y+1) \leq (x+1)^2$, then $y(y-1) \leq x^2$.
-/
theorem putnam_1988_b2
: (∀ x y : ℝ, (y ≥ 0 ∧ y * (y + 1) ≤ (x + 1) ^ 2) → (y * (y - 1) ≤ x ^ 2)) ↔ putnam_1988_b2_solution :=
sorry
