import Mathlib
open BigOperators

open Topology Filter Nat

theorem putnam_2014_b4
(n : ℕ)
(P: Polynomial ℂ)
(npos : n > 0)
(Px : P.degree = n ∧ ∀ k ∈ Set.Icc 0 n, P.coeff k = 2 ^ (k * (n - k)))
: ∀ r ∈ P.roots, r.im = 0 :=
sorry
