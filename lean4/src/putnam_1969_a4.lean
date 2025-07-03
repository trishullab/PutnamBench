import Mathlib

open Matrix Filter Topology Set Nat

/--
Show that $\int_0^1 x^x dx = \sum_{n=1}^{\infty} (-1)^{n+1}n^{-n}$.
-/
theorem putnam_1969_a4
: Tendsto (fun n => ∑ i ∈ Finset.Icc (1 : ℤ) n, (-1)^(i+1)*(i : ℝ)^(-i)) atTop (𝓝 (∫ x in Ioo (0 : ℝ) 1, x^x)) :=
sorry
