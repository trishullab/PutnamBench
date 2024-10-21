import Mathlib

open Set MvPolynomial

/--
Let $c$ be a real number such that $n^c$ is an integer for every positive integer $n$. Show that $c$ is a non-negative integer.
-/
theorem putnam_1971_a6
(c : ℝ)
(hc : ∀ n : ℤ, n > 0 → ∃ m : ℤ, (n : ℝ)^c = m)
: ∃ m : ℤ, m ≥ 0 ∧ c = m :=
sorry
