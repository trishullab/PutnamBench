import Mathlib
open BigOperators

open Nat Topology Filter

theorem putnam_2004_b1
(n : ℕ)
(P : Polynomial ℤ)
(r : ℚ)
(Pdeg : P.degree = n)
(Preq0 : Polynomial.aeval r P = 0)
: ∀ i ∈ Finset.range n, ∃ m : ℤ, m = ∑ j in Finset.range (i + 1), (P.coeff (n - j) * r ^ (i + 1 - j)) :=
sorry
