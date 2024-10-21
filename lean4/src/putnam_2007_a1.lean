import Mathlib

abbrev putnam_2007_a1_solution : Set ℝ := sorry
-- {2 / 3, 3 / 2, (13 + √601) / 12, (13 - √601) / 12}

/--
Find all values of $\alpha$ for which the curves $y = \alpha*x^2 + \alpha*x + 1/24$ and $x = \alpha*y^2 + \alpha*y + 1/24$ are tangent to each other.
-/
theorem putnam_2007_a1
    (P : (ℝ → ℝ) → Prop)
    (P_def : ∀ f, P f ↔ ∃ x y, f x = y ∧ f y = x ∧ deriv f x * deriv f y = 1)
    (α : ℝ) :
    P (fun t ↦ α * t ^ 2 + α * t + 1 / 24) ↔ α ∈ putnam_2007_a1_solution :=
  sorry
