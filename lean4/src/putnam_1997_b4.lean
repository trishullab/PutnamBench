import Mathlib

open Filter Topology Bornology Set Polynomial

/--
Let $a_{m,n}$ denote the coefficient of $x^n$ in the expansion of $(1+x+x^2)^m$.  Prove that for all [integers] $k\geq 0$, \[0\leq \sum_{i=0}^{\lfloor \frac{2k}{3}\rfloor} (-1)^i a_{k-i,i}\leq 1.\]
-/
theorem putnam_1997_b4
    (a : ℕ → ℕ → ℤ)
    (ha : ∀ m n, a m n = coeff ((1 + X + X ^ 2) ^ m) n)
    (k : ℕ) :
    (∑ i ∈ Finset.Iic ⌊2 * (k : ℚ) / 3⌋₊, (-1) ^ i * a (k - i) i) ∈ Icc 0 1 :=
  sorry
