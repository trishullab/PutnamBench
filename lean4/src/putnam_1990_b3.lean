import Mathlib
open BigOperators

open Filter Topology Nat

theorem putnam_1990_b3
(S : Set (Matrix (Fin 2) (Fin 2) ℕ))
(hS : ∀ A ∈ S, ∀ i j : Fin 2, (∃ x : ℤ, A i j = x ^ 2) ∧ A i j ≤ 200)
: (S.encard > 50387) → (∃ A ∈ S, ∃ B ∈ S, A ≠ B ∧ A * B = B * A) :=
sorry
