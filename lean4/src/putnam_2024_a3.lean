import Mathlib

open Finset Function

abbrev putnam_2024_a3_solution : Prop := sorry
theorem putnam_2024_a3
  (S : Finset (Fin 3 × Fin 2024 → Fin 6072))
  (hS : ∀ T ∈ S, Bijective T)
  (hS' : ∀ T ∈ S,
    (∀ j : Icc 1 2024, T (0, j) < T (1, j) ∧ T (1, j) < T (2, j)) ∧
    (∀ (i : Fin 3) (j : Fin 2023), T (i, j) < T (i, (j : Fin 2024) + 1))
  ) :
    putnam_2024_a3_solution ↔
    ∃ (a : Fin 3) (c : Fin 3) (b : Fin 2024) (d : Fin 2024),
      (({T ∈ S | T (a,b) < T (c,d)}.card : ℝ) / S.card) ∈ Set.Icc (1/3 : ℝ) (2/3) :=
  sorry
