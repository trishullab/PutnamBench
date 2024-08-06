import Mathlib
open BigOperators

open Nat

theorem putnam_2002_a3
(n Tn : ℤ)
(hn : n ≥ 2)
(hTn : Tn = Set.ncard {S : Set ℤ | S ⊆ Set.Icc 1 n ∧ Nonempty S ∧ ∃ k : ℤ, k = ((1 : ℝ) / S.ncard) * (∑' s : S, s.1)})
: Even (Tn - n) :=
sorry
