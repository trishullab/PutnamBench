import Mathlib

open EuclideanGeometry

/--
Prove that $$\sum_{r=0}^{\lfloor\frac{n-1}{2}\rfloor} \left(\frac{n - 2r}{n} {n \choose r}\right)^2 = \frac{1}{n} {{2n - 2} \choose {n - 1}}$$ for every positive integer $n$.
-/
theorem putnam_1965_a2
: ∀ n > 0, ∑ r ∈ Finset.Icc 0 ((n - 1)/2), ((n - 2*r) * Nat.choose n r / (n : ℚ))^2 = (Nat.choose (2*n - 2) (n - 1))/(n : ℚ) :=
sorry
