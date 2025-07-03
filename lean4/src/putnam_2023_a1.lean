import Mathlib

open Nat

abbrev putnam_2023_a1_solution : ℕ := sorry
-- 18
/--
For a positive integer $n$, let $f_n(x) = \cos(x) \cos(2x) \cos(3x) \cdots \cos(nx)$. Find the smallest $n$ such that $|f_n''(0)| > 2023$.
-/
theorem putnam_2023_a1
  (f : ℕ → ℝ → ℝ)
  (hf : ∀ n > 0, f n = fun x : ℝ => ∏ i ∈ Finset.Icc 1 n, Real.cos (i * x)) :
  IsLeast {n | 0 < n ∧ |iteratedDeriv 2 (f n) 0| > 2023} putnam_2023_a1_solution :=
sorry
