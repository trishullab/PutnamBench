import Mathlib

open Filter Topology Set

abbrev putnam_2010_b5_solution : Prop := sorry
-- False
/--
Is there a strictly increasing function $f: \mathbb{R} \to \mathbb{R}$ such that $f'(x) = f(f(x))$ for all $x$?
-/
theorem putnam_2010_b5 :
  (∃ f : ℝ → ℝ, StrictMono f ∧ Differentiable ℝ f ∧ (∀ x : ℝ, deriv f x = f (f x))) ↔ putnam_2010_b5_solution :=
sorry
