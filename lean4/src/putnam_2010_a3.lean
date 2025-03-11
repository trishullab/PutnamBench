import Mathlib

/--
Suppose that the function $h : \mathbb{R}^2 → \mathbb{R}$ has continuous partial derivatives and satisfies the equation $h(x, y) = a \frac{\partial h}{\partial x}(x, y) +b \frac{\partial h}{\partial y}(x, y)$ for some constants $a, b$. Prove that if there is a constant $M$ such that $|h(x, y)| ≤ M$ for all $(x, y) ∈ \mathbb{R}^2$, then $h$ is identically zero.
-/
theorem putnam_2010_a3
    (h : ℝ × ℝ → ℝ)
    (a b M : ℝ)
    (H : ContDiff ℝ 1 h)
    (H' : ∀ x, h x = a * (fderiv ℝ h (1, 0) x) + (fderiv ℝ h (0, 1) x))
    (H'' : ∀ x, |h x| ≤ M) : h = 0 :=
  sorry
