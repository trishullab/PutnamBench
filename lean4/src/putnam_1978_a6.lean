import Mathlib

open Set Real

/--
Given $n$ distinct points in the plane, prove that fewer than $2n^{3/2}$ pairs of these points are a distance of $1$ apart.
-/
theorem putnam_1978_a6
(S : Finset (EuclideanSpace ℝ (Fin 2)))
(n : ℕ)
(hn : n = S.card)
(npos : n > 0)
: ({pair : Set (EuclideanSpace ℝ (Fin 2)) | ∃ P ∈ S, ∃ Q ∈ S, pair = {P, Q} ∧ dist P Q = 1}.ncard < 2 * (n : ℝ) ^ ((3 : ℝ) / 2)) :=
sorry
