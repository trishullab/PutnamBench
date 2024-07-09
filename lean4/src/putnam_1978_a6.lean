import Mathlib
open BigOperators

open Set Real

theorem putnam_1978_a6
(S : Finset (Fin 2 → ℝ))
(n : ℕ := S.card)
(npos : n > 0)
: ({pair : Set (Fin 2 → ℝ) | ∃ P ∈ S, ∃ Q ∈ S, pair = {P, Q} ∧ Euclidean.dist P Q = 1}.ncard < 2 * (n : ℝ) ^ ((3 : ℝ) / 2)) :=
sorry
