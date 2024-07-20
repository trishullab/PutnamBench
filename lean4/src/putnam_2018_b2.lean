import Mathlib
open BigOperators

theorem putnam_2018_b2
(n : ℕ)
(hn : n > 0)
(f : ℕ → ℂ → ℂ)
(hf : ∀ z : ℂ, f n z = ∑ i in Finset.range n, (n - i) * z^i)
: ∀ z : ℂ, ‖z‖ ≤ 1 → f n z ≠ 0 :=
sorry
