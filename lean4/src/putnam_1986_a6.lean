import Mathlib

open  Real Equiv

noncomputable abbrev putnam_1986_a6_solution : (ℕ → ℕ) → ℕ → ℝ := sorry
-- fun b n ↦ (∏ i : Finset.Icc 1 n, b i) / Nat.factorial n
/--
Let $a_1, a_2, \dots, a_n$ be real numbers, and let $b_1, b_2, \dots, b_n$ be distinct positive integers. Suppose that there is a polynomial $f(x)$ satisfying the identity
\[
(1-x)^n f(x) = 1 + \sum_{i=1}^n a_i x^{b_i}.
\]
Find a simple expression (not involving any sums) for $f(1)$ in terms of $b_1, b_2, \dots, b_n$ and $n$ (but independent of $a_1, a_2, \dots, a_n$).
-/
theorem putnam_1986_a6
(n : ℕ)
(npos : n > 0)
(a : ℕ → ℝ)
(b : ℕ → ℕ)
(bpos : ∀ i ∈ Finset.Icc 1 n, b i > 0)
(binj : ∀ i ∈ Finset.Icc 1 n, ∀ j ∈ Finset.Icc 1 n, b i = b j → i = j)
(f : Polynomial ℝ)
(hf : ∀ x : ℝ, (1 - x) ^ n * f.eval x = 1 + ∑ i : Finset.Icc 1 n, (a i) * x ^ (b i))
: (f.eval 1 = putnam_1986_a6_solution b n) :=
sorry
