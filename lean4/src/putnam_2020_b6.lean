import Mathlib
open BigOperators

open Filter Topology Set

theorem putnam_2020_b6
(n : ℕ)
(npos : n > 0)
: ∑ k in Finset.Icc 1 n, ((-1) ^ Int.floor (k * (Real.sqrt 2 - 1)) : ℝ) ≥ 0 :=
sorry
