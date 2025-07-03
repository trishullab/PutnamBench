import Mathlib

open Set Nat Polynomial Filter Topology

/--
Show that $1 + (n/1!) + (n^2/2!) + \dots + (n^n/n!) > e^n/2$ for every integer $n \geq 0$.
-/
theorem putnam_1974_b5
: ∀ n ≥ 0, ∑ i ∈ Finset.Icc (0 : ℕ) n, (n^i : ℝ)/(Nat.factorial i) > (Real.exp n)/2 :=
sorry
