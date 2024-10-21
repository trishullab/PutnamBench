import Mathlib

/--
Let $S = \{1, 4, 7, 10, 13, 16, \dots , 100\}$. Let $T$ be a subset of $20$ elements of $S$. Show that we can find two distinct elements of $T$ with sum $104$.
-/
theorem putnam_1978_a1
(S T : Set ℤ)
(hS : S = {k | ∃ j : ℤ, 0 ≤ j ∧ j ≤ 33 ∧ k = 3 * j + 1})
(hT : T ⊆ S ∧ T.ncard = 20)
: (∃ m ∈ T, ∃ n ∈ T, m ≠ n ∧ m + n = 104) :=
sorry
