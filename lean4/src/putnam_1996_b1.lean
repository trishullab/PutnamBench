import Mathlib
open BigOperators

open Function

abbrev putnam_1996_b1_solution : ℕ → ℕ := sorry
-- Nat.fib
theorem putnam_1996_b1
(selfish : Finset ℕ → Prop)
(n : ℕ)
(hselfish : ∀ s : Finset ℕ, selfish s = (s.card ∈ s))
(npos : n ≥ 1)
: {s : Finset ℕ | (s : Set ℕ) ⊆ Set.Icc 1 n ∧ selfish s ∧ (∀ ss : Finset ℕ, ss ⊂ s → ¬selfish ss)}.encard = putnam_1996_b1_solution n :=
sorry
