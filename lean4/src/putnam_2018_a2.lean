import Mathlib
open BigOperators

abbrev putnam_2018_a2_solution : ℕ → ℝ := sorry
-- (fun n : ℕ => if n = 1 then 1 else -1)
theorem putnam_2018_a2
(n : ℕ)
(S : Fin (2 ^ n - 1) → Set ℕ)
(M : Matrix (Fin (2 ^ n - 1)) (Fin (2 ^ n - 1)) ℝ)
(npos : n ≥ 1)
(hS : Set.range S = (Set.Icc 1 n).powerset \ {∅})
(hM : ∀ i j : Fin (2 ^ n - 1), M i j = if (S i ∩ S j = ∅) = True then 0 else 1)
: M.det = putnam_2018_a2_solution n :=
sorry
