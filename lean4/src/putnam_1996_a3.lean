import Mathlib

abbrev putnam_1996_a3_solution : Prop := sorry
-- False
/--
Suppose that each of 20 students has made a choice of anywhere from 0 to 6 courses from a total of 6 courses offered. Prove or disprove: there are 5 students and 2 courses such that all 5 have chosen both courses or all 5 have chosen neither course.
-/
theorem putnam_1996_a3 :
    (∀ choices : Fin 20 → Set (Fin 6),
      ∃ (students : Finset (Fin 20)) (courses : Finset (Fin 6)),
        students.card = 5 ∧
        courses.card = 2 ∧
        (↑courses ⊆ ⋂ s ∈ students, choices s ∨ ↑courses ⊆ ⋂ s ∈ students, (choices s)ᶜ))
    ↔ putnam_1996_a3_solution :=
  sorry
