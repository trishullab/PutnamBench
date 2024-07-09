import Mathlib
open BigOperators

open Finset

theorem putnam_1968_a4
(n : ℕ)
(S : Fin n → (Fin 3 → ℝ))
(hS : ∀ i : Fin n, (S i 0)^2 + (S i 1)^2 + (S i 2)^2 = 1)
: ∑ i : Fin n, ∑ j : Fin n, (if i < j then (Euclidean.dist (S i) (S j))^2 else (0 : ℝ)) ≤ n^2 :=
sorry
