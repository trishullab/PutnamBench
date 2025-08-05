import Mathlib

open Function

/--
Show that for every positive integer $n$, $(\frac{2n-1}{e})^{\frac{2n-1}{2}}<1 \cdot 3 \cdot 5 \cdots (2n-1)<(\frac{2n+1}{e})^{\frac{2n+1}{2}}$.
-/
theorem putnam_1996_b2
(n : ℕ)
(prododd : ℝ)
(npos : n > 0)
(hprododd : prododd = ∏ i ∈ Finset.range (2 * n), if Odd i then i else 1)
: ((2 * n - 1 : ℝ) / Real.exp 1) ^ ((2 * n - 1 : ℝ) / 2) < prododd ∧ prododd < ((2 * n + 1 : ℝ) / Real.exp 1) ^ ((2 * n + 1 : ℝ) / 2) :=
sorry
