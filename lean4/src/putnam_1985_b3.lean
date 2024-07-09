import Mathlib
open BigOperators

open Set Filter Topology Real Polynomial Function

theorem putnam_1985_b3
(a : ℕ → ℕ → ℕ)
(apos : ∀ m n : ℕ, a m n > 0)
(ha : ∀ k : ℕ, k > 0 → {(m, n) : ℕ × ℕ | m > 0 ∧ n > 0 ∧ a m n = k}.encard = 8)
: (∃ m n, m > 0 ∧ n > 0 ∧ a m n > m * n) :=
sorry
