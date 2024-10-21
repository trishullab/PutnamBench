import Mathlib

/--
Assume that $\lvert f(x) \rvert \le 1$ and $\lvert f''(x) \rvert \le 1$ for all $x$ on an interval of length at least 2. Show that $\lvert f'(x) \rvert \le 2$ on the interval.
-/
theorem putnam_1962_a4
(f : ℝ → ℝ)
(a b : ℝ)
(hdiff : Differentiable ℝ f ∧ (Differentiable ℝ (deriv f)))
(hfabs : ∀ x ∈ Set.Icc a b, |f x| ≤ 1)
(hfppabs : ∀ x ∈ Set.Icc a b, |(iteratedDeriv 2 f) x| ≤ 1)
(hlen2 : b - a ≥ 2)
: ∀ x ∈ Set.Icc a b, |(iteratedDeriv 1 f) x| ≤ 2 :=
sorry
