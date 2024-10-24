import Mathlib

open Filter Topology Metric

/--
Let $f$ be a real function with a continuous third derivative such that $f(x), f'(x), f''(x), f'''(x)$ are positive for all $x$.  Suppose that $f'''(x)\leq f(x)$ for all $x$.  Show that $f'(x)<2f(x)$ for all $x$.
-/
theorem putnam_1999_b4
(f : ℝ → ℝ)
(hf : ContDiff ℝ 3 f)
(hpos: ∀ n ≤ 3, ∀ x : ℝ, iteratedDeriv n f x > 0)
(hle : ∀ x : ℝ, iteratedDeriv 3 f x ≤ f x)
: ∀ x : ℝ, deriv f x < 2 * (f x) :=
sorry
