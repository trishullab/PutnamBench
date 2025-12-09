import Mathlib

abbrev putnam_2025_a4_solution : ℕ := sorry
-- 3

/--
Find the minimal value of $k$ such that there exist $k$-by-$k$ real matrices
$A_1, \ldots, A_{2025}$ with the property that $A_i A_j = A_j A_i$ if and only if
$|i - j| \in \{0, 1, 2024\}$.
-/
theorem putnam_2025_a4 :
  IsLeast {k : ℕ | ∃ A : Fin 2025 → Matrix (Fin k) (Fin k) ℝ,
    ∀ i j : Fin 2025, i ≤ j →
      (A i * A j = A j * A i ↔ j.val - i.val ∈ ({0, 1, 2024} : Set ℕ))}
  putnam_2025_a4_solution :=
sorry
