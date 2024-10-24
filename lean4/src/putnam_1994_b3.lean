import Mathlib

open Filter Topology

abbrev putnam_1994_b3_solution : Set ℝ := sorry
-- Set.Iio 1
/--
Find the set of all real numbers $k$ with the following property: For any positive, differentiable function $f$ that satisfies $f'(x)>f(x)$ for all $x$, there is some number $N$ such that $f(x)>e^{kx}$ for all $x>N$.
-/
theorem putnam_1994_b3 :
    {k | ∀ f (hf : (∀ x, 0 < f x ∧ f x < deriv f x) ∧ Differentiable ℝ f),
      ∃ N, ∀ x > N, Real.exp (k * x) < f x} = putnam_1994_b3_solution :=
  sorry
