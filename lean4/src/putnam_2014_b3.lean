import Mathlib
open BigOperators

open Topology Filter Nat

theorem putnam_2014_b3
(m n : ℕ)
(A : Matrix (Fin m) (Fin n) ℚ)
(mnpos : m > 0 ∧ n > 0)
(Aprime : {p : ℕ | p.Prime ∧ ∃ (i : Fin m) (j : Fin n), |A i j| = p}.encard ≥ m + n)
: A.rank ≥ 2 :=
sorry
