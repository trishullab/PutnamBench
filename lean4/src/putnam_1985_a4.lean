import Mathlib
open BigOperators

open Set Filter Topology Real

abbrev putnam_1985_a4_solution : Set (Fin 100) := sorry
-- {87}
theorem putnam_1985_a4
(a : ℕ → ℕ)
(ha1 : a 1 = 3)
(ha : ∀ i ≥ 1, a (i + 1) = 3 ^ a i)
: ({k : Fin 100 | ∀ N : ℕ, ∃ i ≥ N, a i % 100 = k} = putnam_1985_a4_solution) :=
sorry
