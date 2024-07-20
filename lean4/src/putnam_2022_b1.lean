import Mathlib
open BigOperators

open Polynomial

theorem putnam_2022_b1
(n : ℕ)
(P : Polynomial ℝ)
(B : Polynomial ℝ)
(npos : n ≥ 1)
(Pconst : P.coeff 0 = 0)
(Pdegree : P.degree = n)
(Pint : ∀ k : Set.Icc 1 n, P.coeff k = round (P.coeff k))
(Podd : Odd (round (P.coeff 1)))
(hB : ∀ x : ℝ, Real.exp (P.eval x) = B.eval x)
: ∀ k : ℕ, B.coeff k ≠ 0 :=
sorry
