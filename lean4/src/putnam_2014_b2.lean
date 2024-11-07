import Mathlib

open Topology Filter Nat

-- Note: uses (ℝ → ℝ) instead of (Set.Icc (1 : ℝ) 3 → ℝ)
noncomputable abbrev putnam_2014_b2_solution : ℝ := sorry
-- Real.log (4 / 3)
/--
Suppose that \( f \) is a function on the interval \([1,3]\) such that \(-1 \leq f(x) \leq 1\) for all \( x \) and \( \int_{1}^{3} f(x) \, dx = 0 \). How large can \(\int_{1}^{3} \frac{f(x)}{x} \, dx \) be?
-/
theorem putnam_2014_b2 :
  IsGreatest {t | ∃ f : ℝ → ℝ,
    (∀ x : Set.Icc (1 : ℝ) 3, -1 ≤ f x ∧ f x ≤ 1) ∧
    (∫ x in Set.Ioo 1 3, f x = 0) ∧
    (∫ x in Set.Ioo 1 3, (f x) / x) = t}
  putnam_2014_b2_solution :=
sorry
