import Mathlib
open BigOperators

theorem putnam_1964_a1
(A : Finset (Fin 2 → ℝ))
(hAcard : A.card = 6)
(dists : Set ℝ := {d : ℝ | ∃ a b : Fin 2 → ℝ, a ∈ A ∧ b ∈ A ∧ a ≠ b ∧ d = Euclidean.dist a b})
: (sSup dists / sInf dists ≥ Real.sqrt 3) :=
sorry
