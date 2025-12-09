import Mathlib

open Affine EuclideanGeometry

/--
Suppose that each point in the plane is colored either red or green, subject to the following
condition: For every three noncollinear points $A$, $B$, $C$ of the same color, the center of the
circle passing through $A$, $B$, $C$ is also this color. Prove that all points of the plane are the
same color.
-/
theorem putnam_2025_b1
    (color : EuclideanSpace ℝ (Fin 2) → Bool)
    (h : ∀ (s : Simplex ℝ (EuclideanSpace ℝ (Fin 2)) 2),
      (∀ i j : Fin 3, color (s.points i) = color (s.points j)) →
      color s.circumcenter = color (s.points 0)) :
    ∃ c : Bool, ∀ P : EuclideanSpace ℝ (Fin 2), color P = c := by
  sorry
