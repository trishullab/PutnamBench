import Mathlib

open Topology Filter Nat

/--
Let $A$ be an $m \times n$ matrix with rational entries. Suppose that there are at least $m+n$ distinct prime numbers among the absolute values of the entries of $A$. Show that the rank of $A$ is at least 2.
-/
theorem putnam_2014_b3
(m n : ℕ)
(A : Matrix (Fin m) (Fin n) ℚ)
(mnpos : 0 < m ∧ 0 < n)
(Aprime : {p : ℕ | p.Prime ∧ ∃ (i : Fin m) (j : Fin n), |A i j| = p}.encard ≥ m + n)
: A.rank ≥ 2 :=
sorry
