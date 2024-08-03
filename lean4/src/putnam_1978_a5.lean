import Mathlib
open BigOperators

open Set Real

theorem putnam_1978_a5
(n : ℕ)
(npos : n > 0)
(a : Fin n → ℝ)
(ha : ∀ i : Fin n, a i ∈ Ioo 0 Real.pi)
(μ : ℝ)
(hμ : μ = ∑ i : Fin n, a i / n)
: (∏ i : Fin n, sin (a i) / (a i) ≤ (sin μ / μ) ^ n) :=
sorry
