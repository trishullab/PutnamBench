import Mathlib

abbrev putnam_1977_a2_solution : ℝ → ℝ → ℝ → ℝ → Prop := sorry
-- fun a b c d ↦ d = a ∧ b = -c ∨ d = b ∧ a = -c ∨ d = c ∧ a = -b
/--
Find all real solutions $(a, b, c, d)$ to the equations $a + b + c = d$, $\frac{1}{a} + \frac{1}{b} + \frac{1}{c} = \frac{1}{d}$.
-/
theorem putnam_1977_a2 :
    ∀ a b c d : ℝ, putnam_1977_a2_solution a b c d ↔
      a ≠ 0 → b ≠ 0 → c ≠ 0 → d ≠ 0 → (a + b + c = d ∧ 1 / a + 1 / b + 1 / c = 1 / d) :=
  sorry
