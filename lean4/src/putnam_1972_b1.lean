import Mathlib
open BigOperators

open EuclideanGeometry Filter Topology Set MeasureTheory Metric

theorem putnam_1972_b1
(S : ℝ → ℝ)
(hS : S = fun (x : ℝ) => ∑' n : ℕ, x^n * (x - 1)^(2*n) / (Nat.factorial n))
(p : ℕ → ℝ)
(hp : ∃ a : ℝ, a > 0 ∧ ∀ x ∈ ball 0 a, ∑' n : ℕ, (p n)*x^n = S x)
: ¬∃ n : ℕ, p n = 0 ∧ p (n + 1) = 0 ∧ p (n + 2) = 0 :=
sorry
