import Mathlib

/--
Suppose that the function `h : ℝ^2 → ℝ` has continuous
partial derivatives and satisfies the equation `h(x, y) = a ∂h/∂x(x, y) +b ∂h/∂y(x, y)`
for some constants `a,b`. Prove that if there is a constant
`M` such that `|h(x, y)| ≤ M` for all `(x, y) ∈ ℝ^2`, then `h` is
identically zero.
-/
theorem putnam_2010_a3
    (h : ℝ × ℝ → ℝ)
    (a b M : ℝ)
    (H : Differentiable ℝ h)
    (H' : ∀ x, h x = a * (fderiv ℝ h (1, 0) x) + (fderiv ℝ h (0, 1) x))
    (H'' : ∀ x, |h x| ≤ M) : h = 0 := by
  sorry
