import Mathlib

open Nat

abbrev putnam_2002_a1_solution : ℕ → ℕ → ℝ := sorry
-- (fun k n : ℕ => (-k) ^ n * (n)!)
/--
Let $k$ be a fixed positive integer. The $n$-th derivative of $\frac{1}{x^k-1}$ has the form $\frac{P_n(x)}{(x^k-1)^{n+1}}$ where $P_n(x)$ is a polynomial. Find $P_n(1)$.
-/
theorem putnam_2002_a1
(k : ℕ)
(P : ℕ → Polynomial ℝ)
(kpos : k > 0)
(Pderiv : ∀ n x, iteratedDeriv n (fun x' : ℝ => 1 / (x' ^ k - 1)) x = ((P n).eval x) / ((x ^ k - 1) ^ (n + 1)))
: ∀ n, (P n).eval 1 = putnam_2002_a1_solution k n :=
sorry
