import Mathlib

open EuclideanGeometry Filter Topology Set

/--
Show that if $n$ is an integer greater than $1$, then $n$ does not divide $2^n - 1$.
-/
theorem putnam_1972_a5
(n : ℕ)
(hn : n > 1)
: ¬((n : ℤ) ∣ 2^n - 1) :=
sorry
