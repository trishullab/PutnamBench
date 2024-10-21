import Mathlib

open RingHom Set Nat Filter Topology

/--
If $a_1, a_2, \dots, a_n$ are real numbers with $n > 1$ and $A$ satisfies $$A + \sum_{i = 1}^{n} a_i^2 < \frac{1}{n-1}\left(\sum_{i=1}^{n}a_i\right)^2,$$ prove that $A < 2a_{i}a_{j}$ for all $i, j$ with $1 \le i < j \le n$.
-/
theorem putnam_1977_b5
(n : ℕ)
(hn : n > 1)
(a : Fin n → ℝ)
(A : ℝ)
(hA : A + ∑ i : Fin n, (a i)^2 < (1/((n : ℝ) - 1))*(∑ i : Fin n, a i)^2)
: ∀ i j : Fin n, i < j → A < 2*(a i)*(a j) :=
sorry
