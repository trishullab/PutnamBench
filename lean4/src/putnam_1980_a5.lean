import Mathlib
open BigOperators

theorem putnam_1980_a5
(P : Polynomial ℝ)
(xeqs : ℝ → Prop)
(Pnonconst : P.degree > 0)
(hxeqs : ∀ x : ℝ, xeqs x = (0 = (∫ t in (0)..x, P.eval t * Real.sin t) ∧ 0 = (∫ t in (0)..x, P.eval t * Real.cos t)))
: {x : ℝ | xeqs x}.Finite :=
sorry
