import Mathlib

open Filter Topology

abbrev putnam_1997_a6_solution : ℤ → ℤ → ℝ := sorry
-- fun n k => Nat.choose (n.toNat-1) (k.toNat-1)
/--
For a positive integer $n$ and any real number $c$, define $x_k$ recursively by $x_0=0$, $x_1=1$, and for $k\geq 0$, \[x_{k+2}=\frac{cx_{k+1}-(n-k)x_k}{k+1}.\] Fix $n$ and then take $c$ to be the largest value for which $x_{n+1}=0$. Find $x_k$ in terms of $n$ and $k$, $1\leq k\leq n$.
-/
theorem putnam_1997_a6
  (n : ℤ)
  (hn : n > 0)
  (x : ℝ → (ℤ → ℝ))
  (hx0 : ∀ c, x c 0 = 0)
  (hx1 : ∀ c, x c 1 = 1)
  (hxk : ∀ c, ∀ k ≥ 0, x c (k + 2) = (c*(x c (k + 1)) - (n - k)*(x c k))/(k + 1))
  (S : Set ℝ)
  (hS : S = {c : ℝ | x c (n + 1) = 0}) :
  ∀ k : Set.Icc 1 n, x (sSup S) k = putnam_1997_a6_solution n k :=
sorry
