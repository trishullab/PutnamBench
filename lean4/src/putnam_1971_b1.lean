import Mathlib
open BigOperators

open Set MvPolynomial

theorem putnam_1971_b1
(S : Type*) [Mul S]
(hself : ∀ x : S, x * x = x)
(h2 : ∀ x y z : S, (x * y) * z = (y * z) * x)
: (∀ x y z : S, (x * y) * z = x * (y * z)) ∧ (∀ x y : S, x * y = y * x) :=
sorry
