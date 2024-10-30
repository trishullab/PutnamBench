import Mathlib

abbrev putnam_2018_a1_solution : Set (ℤ × ℤ) := sorry
-- {⟨673, 1358114⟩, ⟨674, 340033⟩, ⟨1009, 2018⟩, ⟨2018, 1009⟩, ⟨340033, 674⟩, ⟨1358114, 673⟩}
/--
Find all ordered pairs $(a,b)$ of positive integers for which $\frac{1}{a} + \frac{1}{b} = \frac{3}{2018}$.
-/
theorem putnam_2018_a1
  (a b : ℤ)
  (h : 0 < a ∧ 0 < b) :
  ((1 : ℚ) / a + (1 : ℚ) / b = (3 : ℚ) / 2018) ↔ (⟨a, b⟩ ∈ putnam_2018_a1_solution) :=
sorry
