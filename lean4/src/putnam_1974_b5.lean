import Mathlib
open BigOperators

open Set Nat Polynomial Filter Topology

theorem putnam_1974_b5
: ∀ n ≥ 0, ∑ i in Finset.Icc (0 : ℕ) n, (n^i : ℝ)/(Nat.factorial i) > (Real.exp n)/2 :=
sorry
