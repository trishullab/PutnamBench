import Mathlib

open Nat Filter Topology Real Polynomial

/--
Let $n$ be a positive integer and let $\alpha \neq 1$ be a complex $(2n + 1)\textsuperscript{th}$ root of unity. Prove that there always exist polynomials $p(x)$, $q(x)$ with integer coefficients such that $p(\alpha)^2 + q(\alpha)^2 = -1$.
-/
theorem putnam_1983_b6
(n : ℕ)
(npos : n > 0)
(α : ℂ)
(hα : α ^ (2 ^ n + 1) - 1 = 0 ∧ α ≠ 1)
: (∃ p q : Polynomial ℤ, (aeval α p) ^ 2 + (aeval α q) ^ 2 = -1) :=
sorry
