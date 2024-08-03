import Mathlib
open BigOperators

theorem putnam_1966_a1
(f : ℤ → ℤ)
(hf : f = fun n : ℤ => ∑ m in Finset.Icc 0 n, (if Even m then m / 2 else (m - 1)/2))
: ∀ x y : ℤ, x > 0 ∧ y > 0 ∧ x > y → x * y = f (x + y) - f (x - y) :=
sorry
