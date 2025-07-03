import Mathlib

open Topology Filter Nat Function Polynomial

/--
For nonnegative integers $n$ and $k$, define $Q(n, k)$ to be the coefficient of $x^k$ in the expansion of $(1 + x + x^2 + x^3)^n$. Prove that
\[
Q(n, k) = \sum_{j=0}^k \binom{n}{j} \binom{n}{k-2j},
\]
where $\binom{a}{b}$ is the standard binomial coefficient. (Reminder: For integers $a$ and $b$ with $a \geq 0$, $\binom{a}{b} = \frac{a!}{b!(a-b)!}$ for $0 \leq b \leq a$, with $\binom{a}{b} = 0$ otherwise.)
-/
theorem putnam_1992_b2
    (Q : ℕ → ℕ → ℕ)
    (hQ : Q = fun n k ↦ coeff ((1 + X + X ^ 2 + X ^ 3) ^ n) k)
    (n k : ℕ) :
    Q n k = ∑ j ∈ Finset.Iic k, choose n j * (if 2 * j ≤ k then choose n (k - 2 * j) else 0) :=
  sorry
