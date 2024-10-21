import Mathlib

open Finset Polynomial Topology Filter Metric

/--
Suppose that $f : \mathbb{R} \to \mathbb{R}$ is continuous on $(-\infty, \infty)$ and that $\int_{-\infty}^{\infty} f(x) dx$ exists. Prove that $$\int_{-\infty}^{\infty} f\left(x - \frac{1}{x}\right) dx = \int_{-\infty}^{\infty} f(x) dx.$$
-/
theorem putnam_1968_b4
(f : ℝ → ℝ)
(hf : Continuous f ∧ ∃ r : ℝ, Tendsto (fun y => ∫ x in ball 0 y, f x) atTop (𝓝 r))
: ∃ r : ℝ, Tendsto (fun y => ∫ x in ball 0 y, f (x - 1/x)) atTop (𝓝 r) ∧ Tendsto (fun y => ∫ x in ball 0 y, f x) atTop (𝓝 r) :=
sorry
