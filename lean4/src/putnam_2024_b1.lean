import Mathlib

open List

abbrev putnam_2024_b1_solution : Set (ℕ × ℕ) := sorry
theorem putnam_2024_b1
  (n k : ℕ)
  (hn : 0 < n) (hk : 0 < k)
  (Grid : Fin n → Fin n → ℕ)
  (Grid_def : ∀ i j, Grid i j = (i : ℕ) + (j : ℕ) - k)
  : (n, k) ∈ putnam_2024_b1_solution ↔
      ∃ L : List (Fin n × Fin n),
        L.length = n ∧
        L.Pairwise (fun i j => i.1 ≠ j.1 ∧ i.2 ≠ j.2) ∧
        map (fun l => Grid l.1 l.2) L ~ map (fun q ↦ q + 1) (range n) :=
sorry
