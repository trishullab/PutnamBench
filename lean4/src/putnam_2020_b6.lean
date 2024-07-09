import Mathlib
open BigOperators

open Filter Topology Set

theorem putnam_2020_b6
(n : ℕ)
(npos : n > 0)
: ∑ k : Fin n, ((-1) ^ Int.floor ((k.1 + 1) * (Real.sqrt 2 - 1)) : ℝ) ≥ 0 :=
sorry
