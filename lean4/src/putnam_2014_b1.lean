import Mathlib
open BigOperators

open Topology Filter Nat

abbrev putnam_2014_b1_solution : Set ℕ := sorry
-- {n : ℕ | n > 0 ∧ ¬∃ a ∈ digits 10 n, a = 0}
theorem putnam_2014_b1
(overexpansion : ℕ → List ℕ → Prop)
(hoverexpansion : overexpansion = fun N d ↦ N = ∑ i : Fin d.length, (d.get i) * 10 ^ i.1 ∧ d.getLastI ≠ 0 ∧ ∀ a ∈ d, a ∈ Finset.range 11)
(S : Set ℕ)
(hS : ∀ N : ℕ, N ∈ S ↔ N > 0 ∧ ∃! d : List ℕ, overexpansion N d)
: (S = putnam_2014_b1_solution) :=
sorry
