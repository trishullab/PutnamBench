import Mathlib
open BigOperators

open Filter Topology Set

theorem putnam_2010_b6
(n : ℕ)
(npos : n ≥ 1)
(A : Matrix (Fin n) (Fin n) ℝ)
(Apow : ℕ → Matrix (Fin n) (Fin n) ℝ)
(hApow : ∀ k > 0, Apow k = (fun i j : Fin n => (A i j) ^ k))
: (∀ k ∈ Set.Icc 1 (n + 1), A ^ k = Apow k) → (∀ k ≥ 1, A ^ k = Apow k) :=
sorry
