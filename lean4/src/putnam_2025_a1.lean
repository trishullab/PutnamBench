import Mathlib

/--
Let $m_0$ and $n_0$ be distinct positive integers. For every positive integer $k$,
define $m_k$ and $n_k$ to be the relatively prime positive integers such that
$$\frac{m_k}{n_k} = \frac{2m_{k-1} + 1}{2n_{k-1} + 1}.$$
Prove that $2m_k + 1$ and $2n_k + 1$ are relatively prime for all but finitely many
positive integers $k$.
-/
theorem putnam_2025_a1
  (m n : ℕ → ℕ)
  (hm : ∀ k : ℕ, 0 < m k)
  (hn : ∀ k : ℕ, 0 < n k)
  (h_distinct : m 0 ≠ n 0)
  (h_coprime : ∀ k : ℕ, 0 < k → Nat.Coprime (m k) (n k))
  (h_recurrence : ∀ k : ℕ,
    (m (k + 1) : ℚ) / (n (k + 1) : ℚ) = (2 * (m k : ℚ) + 1) / (2 * (n k : ℚ) + 1)) :
  {k : ℕ | ¬Nat.Coprime (2 * m k + 1) (2 * n k + 1)}.Finite :=
sorry
