import Mathlib

abbrev b : ℕ → ℤ
| 0 => 0
| n + 1 => 2 * (b n) ^ 2 + b n + 1

/--
Let $b_0 = 0$ and, for $n \ge 0$, define $b_{n+1} = 2b_n^2 + b_n + 1$.
For each $k \ge 1$, show that $b_{2^{k+1}} - 2b_{2^k}$ is divisible by $2^{2k+2}$
but not by $2^{2k+3}$.
-/
theorem putnam_2025_a6 (k : ℕ) (hk : 1 ≤ k) :
    (2 ^ (2 * k + 2) : ℤ) ∣ (b (2 ^ (k + 1)) - 2 * b (2 ^ k)) ∧
    ¬((2 ^ (2 * k + 3) : ℤ) ∣ (b (2 ^ (k + 1)) - 2 * b (2 ^ k))) := by
  sorry
