import Mathlib
open BigOperators

open Nat Set

theorem putnam_2005_a3
(p : Polynomial ℂ)
(n : ℕ)
(g : ℂ → ℂ)
(pdeg : p.degree = n)
(pzeros : ∀ z : ℂ, p.eval z = 0 → Complex.abs z = 1)
(hg : ∀ z : ℂ, g z = (p.eval z) / z ^ ((n : ℂ) / 2))
: ∀ z : ℂ, (deriv g z = 0) → (Complex.abs z = 1) :=
sorry
