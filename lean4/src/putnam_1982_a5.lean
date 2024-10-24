import Mathlib

/--
Let $a, b, c, d$ be positive integers satisfying $a + c \leq 1982$ and $\frac{a}{b} + \frac{c}{d} < 1$. Prove that $1 - \frac{a}{b} - \frac{c}{d} > \frac{1}{1983^3}$.
-/
theorem putnam_1982_a5
(a b c d : ℤ)
(hpos : a > 0 ∧ b > 0 ∧ c > 0 ∧ d > 0)
(hac : a + c ≤ 1982)
(hfrac : (a : ℝ) / b + (c : ℝ) / d < 1)
: (1 - (a : ℝ) / b - (c : ℝ) / d > 1 / 1983 ^ 3) :=
sorry
