import Mathlib
open BigOperators

theorem putnam_1966_b2
(S : ℤ → Set ℤ)
(hS : S = fun n : ℤ => {n, n + 1, n + 2, n + 3, n + 4, n + 5, n + 6, n + 7, n + 8, n + 9})
: ∀ n : ℤ, n > 0 → (∃ k ∈ S n, ∀ m ∈ S n, k ≠ m → IsCoprime m k) :=
sorry
