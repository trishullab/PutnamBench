import Mathlib
open BigOperators

open Topology Filter Set Matrix

theorem putnam_2019_b3
(n : ℕ)
(hn : n > 0)
(Q : Matrix (Fin n) (Fin n) ℝ)
(hQ0 : ∀ i j : Fin n, i ≠ j → dotProduct (Q i) (Q j) = 0 ∧ dotProduct (Qᵀ i) (Qᵀ j) = 0)
(hQ1 : ∀ i : Fin n, dotProduct (Q i) (Q i) = 1 ∧ dotProduct (Qᵀ i) (Qᵀ i) = 1)
(u : Matrix (Fin n) (Fin 1) ℝ)
(hu : uᵀ*u = 1)
(P : Matrix (Fin n) (Fin n) ℝ)
(hP : P = 1 - (u * uᵀ))
: (Q - 1).det ≠ 0 → (P * Q - 1).det = 0 :=
sorry
