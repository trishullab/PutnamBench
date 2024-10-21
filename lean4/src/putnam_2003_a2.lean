import Mathlib

open MvPolynomial

/--
Let $a_1,a_2,\dots,a_n$ and $b_1,b_2,\dots,b_n$ be nonnegative real numbers. Show that $(a_1a_2 \cdots a_n)^{1/n}+(b_1b_2 \cdots b_n)^{1/n} \leq [(a_1+b_1)(a_2+b_2) \cdots (a_n+b_n)]^{1/n}$.
-/
theorem putnam_2003_a2
    (n : ℕ)
    (hn : 0 < n)
    (a b : Fin n → ℝ)
    (abnneg : ∀ i, a i ≥ 0 ∧ b i ≥ 0) :
    (∏ i, a i) ^ ((1 : ℝ) / n) +
    (∏ i, b i) ^ ((1 : ℝ) / n) ≤
    (∏ i, (a i + b i)) ^ ((1 : ℝ) / n) :=
  sorry
