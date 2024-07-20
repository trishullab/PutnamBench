import Mathlib
open BigOperators

theorem putnam_2006_b2
(n : ℕ)
(npos : n > 0)
(X : Finset ℝ)
(hXcard : X.card = n)
: (∃ S ⊆ X, S ≠ ∅ ∧ ∃ m : ℤ, |m + ∑ s in S, s| ≤ 1 / (n + 1)) :=
sorry
