import Mathlib
open BigOperators

open Filter Topology Set

abbrev putnam_2020_b1_solution : ℕ := sorry
-- 1990
theorem putnam_2020_b1
(d : ℕ → ℕ := fun n : ℕ => ∑ i : Fin (Nat.digits 2 n).length, (Nat.digits 2 n)[i]!)
(S : ℤ := ∑ k : Icc 1 2020, ((-1)^(d k))*(k : ℕ)^3)
: S % 2020 = putnam_2020_b1_solution :=
sorry
