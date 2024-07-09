import Mathlib
open BigOperators

theorem putnam_1993_a6
(seq : ℕ → ℤ)
(hseq23 : ∀ n : ℕ, seq n = 2 ∨ seq n = 3)
(hseq2inds : ∀ n : ℕ, seq n = 2 ↔ (∃ N : ℕ, n = ∑ i : Fin N, (seq i + 1)))
: ∃ r : ℝ, ∀ n : ℕ, seq n = 2 ↔ (∃ m : ℤ, n + 1 = 1 + Int.floor (r * m)) :=
sorry
