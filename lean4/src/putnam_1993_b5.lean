import Mathlib

/--
Show there do not exist four points in the Euclidean plane such that the pairwise distances between the points are all odd integers.
-/
theorem putnam_1993_b5:
  ¬∃ p : Fin 4 → (EuclideanSpace ℝ (Fin 2)),
    ∀ i j, i ≠ j →
      (∃ n : ℤ, dist (p i) (p j) = n ∧ Odd n) :=
  sorry
