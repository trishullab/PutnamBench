import Mathlib

open Function Set

abbrev putnam_2013_b1_solution : ℤ := sorry
-- -1
/--
For positive integers $n$, let the numbers $c(n)$ be determined by the rules $c(1)=1$, $c(2n)=c(n)$, and $c(2n+1)=(-1)^nc(n)$. Find the value of $\sum_{n=1}^{2013} c(n)c(n+2)$.
-/
theorem putnam_2013_b1
(c : ℕ → ℤ)
(hc1 : c 1 = 1)
(hceven : ∀ n : ℕ, n > 0 → c (2 * n) = c n)
(hcodd : ∀ n : ℕ, n > 0 → c (2 * n + 1) = (-1) ^ n * c n)
: (∑ n : Set.Icc 1 2013, c n * c (n.1 + 2)) = putnam_2013_b1_solution :=
sorry
