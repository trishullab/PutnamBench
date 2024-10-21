import Mathlib

open Polynomial

/--
Suppose that $f : \mathbb{R} \to \mathbb{R}$ is a twice continuously differentiable function such that $|f(x)| \le 1$ for all real $x$ and $(f(0))^2 + (f'(0))^2 = 4$. Prove that $f(y) + f''(y) = 0$ for some real number $y$.
-/
theorem putnam_1976_a6
(f : ℝ → ℝ)
(hfdiff : ContDiff ℝ 2 f)
(hfbd : ∀ x : ℝ, |f x| ≤ 1)
(hf0 : (f 0)^2 + (deriv f 0)^2 = 4)
: ∃ y : ℝ, (f y) + (iteratedDeriv 2 f y) = 0 :=
sorry
