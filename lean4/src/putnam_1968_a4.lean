import Mathlib
open BigOperators

open Finset

theorem putnam_1968_a4
(n : ℕ)
(S : Fin n → (EuclideanSpace ℝ (Fin 3)))
(hS : ∀ i : Fin n, dist 0 (S i) = 1)
: ∑ i : Fin n, ∑ j : Fin n, (if i < j then (dist (S i) (S j))^2 else (0 : ℝ)) ≤ n^2 :=
sorry
