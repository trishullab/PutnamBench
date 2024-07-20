import Mathlib
open BigOperators

open EuclideanGeometry

theorem putnam_1965_a2
: ∀ n > 0, ∑ r in Finset.Icc 0 ((n - 1)/2), ((n - 2*r) * Nat.choose n r / (n : ℚ))^2 = (Nat.choose (2*n - 2) (n - 1))/(n : ℚ) :=
sorry
