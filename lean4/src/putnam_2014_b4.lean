import Mathlib

open Topology Filter Nat

/--
Show that for each positive integer \( n \), all the roots of the polynomial $ \sum_{k=0}^{n} 2^k(n-k)x^k $ are real numbers.
-/
theorem putnam_2014_b4
(n : ℕ)
(P: Polynomial ℂ)
(npos : n > 0)
(Px : P.degree = n ∧ ∀ k ∈ Set.Icc 0 n, P.coeff k = 2 ^ (k * (n - k)))
: ∀ r ∈ P.roots, r.im = 0 :=
sorry
