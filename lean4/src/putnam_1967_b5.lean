import Mathlib

open Nat Topology Filter

/--
For any positive integer $n$, prove that the sum of the first $n$ terms of the bimonial expansion of $(2 - 1)^{-n}$ (starting with the maximal exponent of $2$) is $\frac{1}{2}.$
-/
theorem putnam_1967_b5
(n : ℕ)
(hn : n > 0)
: (1 : ℚ)/2 = ∑ i ∈ Finset.range n, (Nat.choose (n + i - 1) i) * (2 : ℚ)^(-(n : ℤ) - i) :=
sorry
