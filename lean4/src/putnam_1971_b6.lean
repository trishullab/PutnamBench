import Mathlib

open Set MvPolynomial

/--
Let $\delta(x) be the greatest odd divisor of the positive integer $x$. Show that $|\sum_{n = 1}^x \delta(n)/n - 2x/3| < 1$ for all positive integers $x$.
-/
theorem putnam_1971_b6
(δ : ℤ → ℤ)
(hδ : δ = fun n => sSup {t | Odd t ∧ t ∣ n})
: ∀ x : ℤ, x > 0 → |∑ i ∈ Finset.Icc 1 x, (δ i)/(i : ℚ) - 2*x/3| < 1 :=
sorry
