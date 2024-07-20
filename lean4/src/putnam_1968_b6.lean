import Mathlib
open BigOperators

open Finset Polynomial Topology Filter Metric

theorem putnam_1968_b6
: ¬∃ K : ℕ → Set ℚ, (∀ n : ℕ, IsCompact (K n)) ∧ (∀ S : Set ℚ, IsCompact S → ∃ n : ℕ, S ⊆ K n) :=
sorry
