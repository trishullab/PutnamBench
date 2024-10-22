import Mathlib

open Polynomial

abbrev putnam_1975_a2_solution : (ℝ × ℝ) → Prop := sorry
-- fun (b, c) => c < 1 ∧ c - b > -1 ∧ c + b > -1
/--
For which ordered pairs $(b, c)$ of real numbers do both roots of $z^2 + bz + c$ lie strictly inside the unit disk (i.e., $\{|z| < 1\}$) in the complex plane?
-/
theorem putnam_1975_a2
: ∀ b c : ℝ, (∀ z : ℂ, (X^2 + (C (b : ℂ))*X + (C (c : ℂ)) : Polynomial ℂ).eval z = 0 → ‖z‖ < 1) ↔ putnam_1975_a2_solution (b, c) :=
sorry
