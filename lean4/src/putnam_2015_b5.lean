import Mathlib
open BigOperators

open Function

abbrev putnam_2015_b5_solution : ℕ := sorry
-- 4
theorem putnam_2015_b5
(P : ℕ → ℕ)
(hP : P = fun n ↦ {pi : Finset.Icc 1 n → Finset.Icc 1 n | Bijective pi ∧ ∀ i j : Finset.Icc 1 n, Nat.dist i j = 1 → Nat.dist (pi i) (pi j) ≤ 2}.ncard)
: (∀ n : ℕ, n ≥ 2 →  (P (n + 5) : ℤ) - (P (n + 4) : ℤ) - (P (n + 3) : ℤ) + (P n : ℤ) = putnam_2015_b5_solution) :=
sorry
