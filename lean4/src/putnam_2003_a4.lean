import Mathlib
open BigOperators

open MvPolynomial

theorem putnam_2003_a4
(a b c A B C : ℝ)
(aAne0 : a ≠ 0 ∧ A ≠ 0)
(hle : ∀ x : ℝ, |a * x ^ 2 + b * x + c| ≤ |A * x ^ 2 + B * x + C|)
: |b ^ 2 - 4 * a * c| ≤ |B ^ 2 - 4 * A * C| :=
sorry
