import Mathlib
open BigOperators

open Nat Topology Filter

theorem putnam_2004_b1
(n : ℕ)
(P : Polynomial ℝ)
(isint : ℝ → Prop)
(r : ℚ)
(Pdeg : P.degree = n)
(hisint : ∀ x : ℝ, isint x = (x = round x))
(Pcoeff : ∀ i : Fin (n + 1), isint (P.coeff i))
(Preq0 : P.eval (r : ℝ) = 0)
: ∀ i : Fin n, isint (∑ j : Fin (i + 1), (P.coeff (n - j) * r ^ ((i.1 + 1) - j))) :=
sorry
