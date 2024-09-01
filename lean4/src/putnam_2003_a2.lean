import Mathlib
open BigOperators

open MvPolynomial

theorem putnam_2003_a2
    (n : ℕ)
    (hn : 0 < n)
    (a b : Fin n → ℝ)
    (abnneg : ∀ i, a i ≥ 0 ∧ b i ≥ 0) :
    (∏ i, a i) ^ ((1 : ℝ) / n) +
    (∏ i, b i) ^ ((1 : ℝ) / n) ≤
    (∏ i, (a i + b i)) ^ ((1 : ℝ) / n) :=
  sorry
