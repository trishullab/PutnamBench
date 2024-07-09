import Mathlib
open BigOperators

open MvPolynomial

theorem putnam_2003_a2
(n : ℕ)
(a b : Fin n → ℝ)
(abnneg : ∀ i : Fin n, a i ≥ 0 ∧ b i ≥ 0)
: (∏ i : Fin n, a i) ^ ((1 : ℝ) / n) + (∏ i : Fin n, b i) ^ ((1 : ℝ) / n) ≤ (∏ i : Fin n, (a i + b i)) ^ ((1 : ℝ) / n) :=
sorry
