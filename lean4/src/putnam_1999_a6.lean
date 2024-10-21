import Mathlib

open Filter Topology Metric

/--
The sequence $(a_n)_{n\geq 1}$ is defined by $a_1=1, a_2=2, a_3=24,$ and, for $n\geq 4$, \[a_n = \frac{6a_{n-1}^2a_{n-3} - 8a_{n-1}a_{n-2}^2}{a_{n-2}a_{n-3}}.\] Show that, for all n, $a_n$ is an integer multiple of $n$.
-/
theorem putnam_1999_a6
(a : ℤ → ℝ)
(ha1 : a 1 = 1)
(ha2 : a 2 = 2)
(ha3 : a 3 = 24)
(hange4 : ∀ n : ℕ, n ≥ 4 → a n = (6 * (a (n - 1))^2 * (a (n - 3)) - 8 * (a (n - 1)) * (a (n - 2))^2)/(a (n - 2) * a (n - 3)))
: ∀ n, n ≥ 1 → (∃ k : ℤ, a n = k * n) :=
sorry
