import Mathlib

open Topology Filter Nat

/--
Let \[ P_n(x) = 1 + 2 x  + 3 x^2 + \cdots + n x^{n-1}.\] Prove that the polynomials $P_j(x)$ and $P_k(x)$ are relatively prime for all positive integers $j$ and $k$ with $j \neq k$.
-/
theorem putnam_2014_a5
(P : ℕ → Polynomial ℂ)
(hP : ∀ n, P n = ∑ i ∈ Finset.Icc 1 n, i * Polynomial.X ^ (i - 1))
: ∀ (j k : ℕ), (j > 0 ∧ k > 0) → j ≠ k → IsCoprime (P j) (P k) :=
sorry
