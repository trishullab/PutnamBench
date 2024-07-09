import Mathlib
open BigOperators

open Nat Topology Filter

abbrev putnam_2004_a1_solution : Prop := sorry
-- True
theorem putnam_2004_a1
(S : (ℕ → Fin 2) → ℕ → ℝ)
(hS : ∀ attempts : ℕ → Fin 2, ∀ N ≥ 1, S attempts N = (∑ i : Fin N, (attempts i).1) / N)
: (∀ (attempts : ℕ → Fin 2) (a b : ℕ), (1 ≤ a ∧ a < b ∧ S attempts a < 0.8 ∧ S attempts b > 0.8) → (∃ c : ℕ, a < c ∧ c < b ∧ S attempts c = 0.8)) ↔ putnam_2004_a1_solution :=
sorry
