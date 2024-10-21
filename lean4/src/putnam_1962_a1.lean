import Mathlib

open MeasureTheory

/--
Given five points in a plane, no three of which lie on a straight line, show that some four of these points form the vertices of a convex quadrilateral.
-/
theorem putnam_1962_a1
(S : Set (ℝ × ℝ))
(hS : S.ncard = 5)
(hnoncol : ∀ s ⊆ S, s.ncard = 3 → ¬Collinear ℝ s)
: ∃ T ⊆ S, T.ncard = 4 ∧ ¬∃ t ∈ T, t ∈ convexHull ℝ (T \ {t}) :=
sorry
