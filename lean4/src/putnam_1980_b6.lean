import Mathlib
open BigOperators

open Set

theorem putnam_1980_b6
(G : ℤ × ℤ → ℚ)
(hG : ∀ d n : ℕ, d ≤ n → (d = 1 → G (d, n) = 1/(n : ℚ)) ∧ (d > 1 → G (d, n) = (d/(n : ℚ))*∑ i in Finset.Icc d n, G ((d : ℤ) - 1, (i : ℤ) - 1)))
: ∀ d p : ℕ, 1 < d ∧ d ≤ p ∧ Prime p → ¬p ∣ (G (d, p)).den :=
sorry
