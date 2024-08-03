import Mathlib
open BigOperators

open Set MvPolynomial

theorem putnam_1971_b6
(δ : ℤ → ℤ)
(hδ : δ = fun n => sSup {t | Odd t ∧ t ∣ n})
: ∀ x : ℤ, x > 0 → |∑ i in Finset.Icc 1 x, (δ i)/(i : ℚ) - 2*x/3| < 1 :=
sorry
