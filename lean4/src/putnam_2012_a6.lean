import Mathlib

open Matrix Function

-- Note: this formalization differs from the original problem wording in only allowing axis-aligned rectangles. The problem is solvable given this weaker hypothesis.
abbrev putnam_2012_a6_solution : Prop := sorry
-- True
/--
Let $f(x,y)$ be a continuous, real-valued function on $\mathbb{R}^2$. Suppose that, for every rectangular region $R$ of area $1$, the double integral of $f(x,y)$ over $R$ equals $0$.
Must $f(x,y)$ be identically $0$?
-/
theorem putnam_2012_a6
(p : ((ℝ × ℝ) → ℝ) → Prop)
(hp : p = fun f ↦ Continuous f ∧ ∀ x1 x2 y1 y2 : ℝ, x2 > x1 → y2 > y1 → (x2 - x1) * (y2 - y1) = 1 → ∫ x in x1..x2, ∫ y in y1..y2, f (x, y) = 0)
: ((∀ f : (ℝ × ℝ) → ℝ, ∀ x y : ℝ, p f → f (x, y) = 0) ↔ putnam_2012_a6_solution) :=
sorry
