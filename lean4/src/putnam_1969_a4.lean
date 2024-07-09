import Mathlib
open BigOperators

open Matrix Filter Topology Set Nat

theorem putnam_1969_a4
: Tendsto (fun n => ∑ i in Finset.Icc (1 : ℤ) n, (-1)^(i+1)*(i : ℝ)^(-i)) atTop (𝓝 (∫ x in Ioo (0 : ℝ) 1, x^x)) :=
sorry
