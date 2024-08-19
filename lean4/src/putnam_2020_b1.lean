import Mathlib
open BigOperators

open Filter Topology Set

abbrev putnam_2020_b1_solution : ℕ := sorry
-- 1990
theorem putnam_2020_b1
(d : ℕ → ℕ)
(S : ℤ)
(hd : d = fun n : ℕ => ∑ i : Fin (Nat.digits 2 n).length, (Nat.digits 2 n)[i]!)
(hS : S = ∑ k : Icc 1 2020, ((-1 : ℤ)^(d k))*(k : ℤ)^3)
: S % 2020 = putnam_2020_b1_solution :=
sorry
