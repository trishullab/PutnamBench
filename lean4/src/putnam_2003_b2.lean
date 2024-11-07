import Mathlib

open MvPolynomial Set

-- uses (ℕ → ℕ → ℚ) instead of (Fin n → Icc 1 n → ℚ)
/--
Let $n$ be a positive integer. Starting with the sequence $$1, \frac{1}{2}, \frac{1}{3}, \dots, \frac{1}{n},$$ form a new sequence of $n-1$ entries $$\frac{3}{4}, \frac{5}{12}, \dots, \frac{2n-1}{2n(n-1)}$$ by taking the averages of two consecutive entries in the first sequence. Repeat the averaging of neighbors on the second sequence to obtain a third sequence of $n-2$ entries, and continue until the final sequence produced consists of a single number $x_n$. Show that $x_n < 2/n$.
-/
theorem putnam_2003_b2
  (n : ℕ)
  (hn : n > 0)
  (seq : ℕ → ℕ → ℚ)
  (hinit : ∀ j ∈ Icc 1 n, seq 0 j = 1 / j)
  (havg : ∀ᵉ (k ∈ Icc 1 (n - 1)) (j ∈ Icc 1 (n - k)),
    seq k j = (seq (k - 1) j + seq (k - 1) (j + 1)) / 2) :
  (seq (n - 1) 1 < 2 / n) :=
sorry
