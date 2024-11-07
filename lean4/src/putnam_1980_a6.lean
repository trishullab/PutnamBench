import Mathlib

-- Note: uses (ℝ → ℝ) instead of (Set.Icc (0 : ℝ) 1 → ℝ)
noncomputable abbrev putnam_1980_a6_solution : ℝ := sorry
-- 1 / Real.exp 1
/--
Let $C$ be the class of all real valued continuously differentiable functions $f$ on the interval $0 \leq x \leq 1$ with $f(0)=0$ and $f(1)=1$. Determine the largest real number $u$ such that $u \leq \int_0^1|f'(x)-f(x)|\,dx$ for all $f$ in $C$.
-/
theorem putnam_1980_a6
    (C : Set (ℝ → ℝ))
    (hC : C = {f : ℝ → ℝ | ContDiffOn ℝ 1 f (Set.Icc 0 1) ∧ f 0 = 0 ∧ f 1 = 1}) :
    IsGreatest
      {(u : ℝ) | ∀ f ∈ C, u ≤ (∫ x in Set.Ioo 0 1, |deriv f x - f x|)}
      putnam_1980_a6_solution :=
  sorry
