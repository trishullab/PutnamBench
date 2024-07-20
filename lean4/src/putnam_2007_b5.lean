import Mathlib
open BigOperators

open Set Nat Function

theorem putnam_2007_b5
(k : ℕ)
(kpos : k > 0)
: (∃ P : Finset.range k → Polynomial ℝ, ∀ n : ℤ, ⌊(n : ℝ) / k⌋ ^ k = ∑ i : Finset.range k, (P i).eval (n : ℝ) * ⌊(n : ℝ) / k⌋ ^ (i : ℕ)) :=
sorry
