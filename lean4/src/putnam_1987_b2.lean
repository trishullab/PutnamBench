import Mathlib

open MvPolynomial Real Nat

/--
Let $r, s$ and $t$ be integers with $0 \leq r$, $0 \leq s$ and $r+s \leq t$. Prove that
\[
\frac{\binom s0}{\binom tr}
+ \frac{\binom s1}{\binom{t}{r+1}} + \cdots
+ \frac{\binom ss}{\binom{t}{r+s}}
= \frac{t+1}{(t+1-s)\binom{t-s}{r}}.
\]
-/
theorem putnam_1987_b2
(r s t : ℕ)
(hsum : r + s ≤ t)
: (∑ i : Finset.range (s + 1), (choose s i : ℚ) / (choose t (r + i)) = ((t + 1) : ℚ) / ((t + 1 - s) * choose (t - s) r)) :=
sorry
