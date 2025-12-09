import Mathlib

open Real

noncomputable abbrev putnam_2025_a2_solution : ℝ × ℝ := sorry
-- (1 / π, 4 / π ^ 2)

/--
Find the largest real number $a$ and the smallest real number $b$ such that
$$ax(\pi - x) \le \sin x \le bx(\pi - x)$$
for all $x$ in the interval $[0, \pi]$.
-/
theorem putnam_2025_a2 (a b : ℝ) :
  ((a, b) = putnam_2025_a2_solution) ↔
  (IsGreatest {a' : ℝ | ∀ x ∈ Set.Icc 0 π, a' * x * (π - x) ≤ sin x} a ∧
   IsLeast {b' : ℝ | ∀ x ∈ Set.Icc 0 π, sin x ≤ b' * x * (π - x)} b) :=
sorry
