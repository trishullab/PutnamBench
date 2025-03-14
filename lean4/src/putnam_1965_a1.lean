import Mathlib

open EuclideanGeometry Real

noncomputable abbrev putnam_1965_a1_solution : ℝ := sorry
-- Real.pi / 15
/--
Let $\triangle ABC$ satisfy $\angle CAB < \angle BCA < \frac{\pi}{2} < \angle ABC$. If the bisector of the external angle at $A$ meets line $BC$ at $P$, the bisector of the external angle at $B$ meets line $CA$ at $Q$, and $AP = BQ = AB$, find $\angle CAB$.
-/
theorem putnam_1965_a1
(A B C X Y : EuclideanSpace ℝ (Fin 2))
(hABC : ¬Collinear ℝ {A, B, C})
(hangles : ∠ C A B < ∠ B C A ∧ ∠ B C A < π/2 ∧ π/2 < ∠ A B C)
(hX : Collinear ℝ {X, B, C} ∧ ∠ X A B = (π - ∠ C A B)/2 ∧ dist A X = dist A B)
(hY : Collinear ℝ {Y, C, A} ∧ ∠ Y B C = (π - ∠ A B C)/2 ∧ dist B Y = dist A B)
: ∠ C A B = putnam_1965_a1_solution :=
sorry
