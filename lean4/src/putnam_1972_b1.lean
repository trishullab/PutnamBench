import Mathlib

open EuclideanGeometry Filter Topology Set MeasureTheory Metric

/--
Prove that no three consecutive coefficients of the power series of $$\sum_{n = 0}^{\infty} \frac{x^n(x - 1)^{2n}}{n!}$$ all equal $0$.
-/
theorem putnam_1972_b1
(S : ℝ → ℝ)
(hS : S = fun (x : ℝ) => ∑' n : ℕ, x^n * (x - 1)^(2*n) / (Nat.factorial n))
(p : ℕ → ℝ)
(hp : ∃ a : ℝ, a > 0 ∧ ∀ x ∈ ball 0 a, ∑' n : ℕ, (p n)*x^n = S x)
: ¬∃ n : ℕ, p n = 0 ∧ p (n + 1) = 0 ∧ p (n + 2) = 0 :=
sorry
