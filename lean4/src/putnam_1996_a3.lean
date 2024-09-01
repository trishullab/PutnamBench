import Mathlib
open BigOperators

abbrev putnam_1996_a3_solution : Prop := sorry
-- False
theorem putnam_1996_a3 :
    (∀ choices : Fin 20 → Set (Fin 6),
      ∃ (students : Finset (Fin 20)) (courses : Finset (Fin 6)),
        students.card = 5 ∧
        courses.card = 2 ∧
        (↑courses ⊆ ⋂ s ∈ students, choices s ∨ ↑courses ⊆ ⋂ s ∈ students, (choices s)ᶜ))
    ↔ putnam_1996_a3_solution :=
  sorry
