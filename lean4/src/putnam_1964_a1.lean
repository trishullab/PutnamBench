import Mathlib

/--
Let $A_1, A_2, A_3, A_4, A_5, A_6$ be distinct points in the plane. Let $D$ be the longest distance between any pair, and let $d$ the shortest distance. Show that $\frac{D}{d} \geq \sqrt 3$.
-/
theorem putnam_1964_a1
(A : Finset (EuclideanSpace ℝ (Fin 2)))
(hAcard : A.card = 6)
(dists : Set ℝ)
(hdists : dists = {d : ℝ | ∃ a b : EuclideanSpace ℝ (Fin 2), a ∈ A ∧ b ∈ A ∧ a ≠ b ∧ d = dist a b})
: (sSup dists / sInf dists ≥ Real.sqrt 3) :=
sorry
