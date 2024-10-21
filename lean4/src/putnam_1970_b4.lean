import Mathlib

open Metric Set EuclideanGeometry Filter Topology

/--
Let $x : \mathbb{R} \to \mathbb{R}$ be a twice differentiable function satisfying $x(1) - x(0) = 1$, $x'(0) = x'(1) = 0$, and $|x'(t)| \le \frac{3}{2}$ for all $t \in (0, 1)$. Prove that there exists some $t \in [0, 1]$ such that $|x''(t)| \ge \frac{9}{2}$.
-/
theorem putnam_1970_b4
(x : ℝ → ℝ)
(hdiff : DifferentiableOn ℝ x (Set.Icc 0 1) ∧ DifferentiableOn ℝ (deriv x) (Set.Icc 0 1))
(hx : x 1 - x 0 = 1)
(hv : deriv x 0 = 0 ∧ deriv x 1 = 0)
(hs : ∀ t ∈ Set.Ioo 0 1, |deriv x t| ≤ 3/2)
: ∃ t ∈ Set.Icc 0 1, |(deriv (deriv x)) t| ≥ 9/2 :=
sorry
