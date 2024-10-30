import Mathlib

open Filter Topology Set
abbrev putnam_2010_b2_solution : ℕ := sorry
-- 3
/--
Given that $A$, $B$, and $C$ are noncollinear points in the plane with integer coordinates such that the distances $AB$, $AC$, and $BC$ are integers, what is the smallest possible value of $AB$?
-/
theorem putnam_2010_b2
  (ABCintcoords ABCintdists ABCall: EuclideanSpace ℝ (Fin 2) → EuclideanSpace ℝ (Fin 2) → EuclideanSpace ℝ (Fin 2) → Prop)
  (hABCintcoords : ∀ A B C, ABCintcoords A B C ↔ (∀ i : Fin 2, A i = round (A i) ∧ B i = round (B i) ∧ C i = round (C i)))
  (hABCintdists : ∀ A B C, ABCintdists A B C ↔ (dist A B = round (dist A B) ∧ dist A C = round (dist A C) ∧ dist B C = round (dist B C)))
  (hABCall : ∀ A B C, ABCall A B C ↔ (¬Collinear ℝ {A, B, C} ∧ ABCintcoords A B C ∧ ABCintdists A B C)) :
  IsLeast {y | ∃ A B C, ABCall A B C ∧ y = dist A B} putnam_2010_b2_solution :=
sorry
