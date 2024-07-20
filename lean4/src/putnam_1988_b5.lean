import Mathlib
open BigOperators

open Set Filter Topology

abbrev putnam_1988_b5_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => 2 * n)
theorem putnam_1988_b5
(n : ℕ)
(Mn : Matrix (Fin (2 * n + 1)) (Fin (2 * n + 1)) ℝ)
(npos : n > 0)
(Mnskewsymm : ∀ i j : Fin (2 * n + 1), Mn i j = -(Mn j i))
(hMn1 : ∀ i j : Fin (2 * n + 1), (1 ≤ (i.1 : ℤ) - j.1 ∧ (i.1 : ℤ) - j.1 ≤ n) → Mn i j = 1)
(hMnn1 : ∀ i j : Fin (2 * n + 1), (i.1 : ℤ) - j.1 > n → Mn i j = -1)
: Mn.rank = putnam_1988_b5_solution n :=
sorry
