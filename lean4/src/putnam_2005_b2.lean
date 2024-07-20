import Mathlib
open BigOperators

open Nat Set

-- Note: uses ℕ → ℕ instead of Fin n → ℕ
abbrev putnam_2005_b2_solution : Set (ℕ × (ℕ → ℤ)) := sorry
-- {(n, k) : ℕ × (ℕ → ℤ) | (n = 1 ∧ k 0 = 1) ∨ (n = 3 ∧ (k '' {0, 1, 2} = {2, 3, 6})) ∨ (n = 4 ∧ (∀ i : Fin 4, k i = 4))}
theorem putnam_2005_b2
(n : ℕ)
(k : ℕ → ℤ)
(nkpos : Prop)
(nkeq1 : Prop)
(nkeq2 : Prop)
(hnkpos : nkpos = (n > 0 ∧ (∀ i : Fin n, k i > 0)))
(hnkeq1 : nkeq1 = (∑ i : Fin n, k i = 5 * n - 4))
(hnkeq2 : nkeq2 = (∑ i : Fin n, (1 : ℝ) / (k i) = 1))
: (nkpos ∧ nkeq1 ∧ nkeq2) ↔ (n, k) ∈ putnam_2005_b2_solution :=
sorry
