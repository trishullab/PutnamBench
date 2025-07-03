import Mathlib

open Set

/--
For integers $d, n$ with $1 \le d \le n$, let $G(1, n) = \frac{1}{n}$ and $G(d, n) = \frac{d}{n}\sum_{i=d}^{n}G(d - 1, i - 1)$ for all $d > 1$. If $1 < d \le p$ for some prime $p$, prove that the reduced denominator of $G(d, p)$ is not divisible by $p$.
-/
theorem putnam_1980_b6
(G : ℤ × ℤ → ℚ)
(hG : ∀ d n : ℕ, d ≤ n → (d = 1 → G (d, n) = 1/(n : ℚ)) ∧ (d > 1 → G (d, n) = (d/(n : ℚ))*∑ i ∈ Finset.Icc d n, G ((d : ℤ) - 1, (i : ℤ) - 1)))
: ∀ d p : ℕ, 1 < d ∧ d ≤ p ∧ Prime p → ¬p ∣ (G (d, p)).den :=
sorry
