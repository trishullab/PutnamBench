import Mathlib
open BigOperators

open MvPolynomial Real Nat

theorem putnam_1987_b2
(r s t : ℕ)
(hsum : r + s ≤ t)
: (∑ i : Finset.range (s + 1), (choose s i : ℚ) / (choose t (r + i)) = ((t + 1) : ℚ) / ((t + 1 - s) * choose (t - s) r)) :=
sorry
