import Mathlib

/--
Suppose that $A$, $B$, $C$, and $D$ are distinct points, no three of which lie on a line, in the Euclidean plane. Show that if the squares of the lengths of the line segments $AB$, $AC$, $AD$, $BC$, $BD$, and $CD$ are rational numbers, then the quotient $\frac{\text{area}(\triangle ABC)}{\text{area}(\triangle ABD)}$ is a rational number.
-/
theorem putnam_2018_a6
  (A B C D : EuclideanSpace ℝ (Fin 2))
  (PPprops : (EuclideanSpace ℝ (Fin 2)) → (EuclideanSpace ℝ (Fin 2)) → Prop)
  (hPPprops : ∀ P1 P2, PPprops P1 P2 ↔ P1 ≠ P2 ∧ (∃ q : ℚ, (dist P1 P2) ^ 2 = q))
  (ABCDnoline : ¬Collinear ℝ {A, B, C} ∧ ¬Collinear ℝ {A, B, D} ∧ ¬Collinear ℝ {A, C, D} ∧ ¬Collinear ℝ {B, C, D})
  (ABCDsqrrat : PPprops A B ∧ PPprops A C ∧ PPprops A D ∧ PPprops B C ∧ PPprops B D ∧ PPprops C D) :
  ∃ q : ℚ, (MeasureTheory.volume (convexHull ℝ {A, B, C}) / MeasureTheory.volume (convexHull ℝ {A, B, D})).toReal = q :=
sorry
