import Mathlib
open BigOperators

open Set Nat

noncomputable abbrev putnam_1974_a4_solution : ℕ → ℝ := sorry
-- (fun n => (n / 2^(n-1)) * (n-1).choose (floor ((n-1)/2)))
theorem putnam_1974_a4
(n : ℕ)
(hn : n > 0)
: (1 : ℝ)/(2^(n-1)) * ∑ k in Finset.Icc 0 ((ceil (n/2)) - 1), (n - 2*k)*(n.choose k) = putnam_1974_a4_solution n :=
sorry
