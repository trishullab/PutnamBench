import Mathlib

open Function Set

/--
Suppose that the real numbers \( a_0, a_1, \ldots, a_n \) and \( x \), with \( 0 < x < 1 \), satisfy $ \frac{a_0}{1-x} + \frac{a_1}{(1-x)^2} + \cdots + \frac{a_n}{(1-x)^{n+1}} = 0. $ Prove that there exists a real number \( y \) with \( 0 < y < 1 \) such that $ a_0 + a_1y + \cdots + a_ny^n = 0. $.
-/
theorem putnam_2013_a3
(n : ℕ)
(a : Set.Icc 0 n → ℝ)
(x : ℝ)
(hx : 0 < x ∧ x < 1)
(hsum : (∑ i : Set.Icc 0 n, a i / (1 - x ^ (i.1 + 1))) = 0)
: ∃ y : ℝ, 0 < y ∧ y < 1 ∧ (∑ i : Set.Icc 0 n, a i * y ^ i.1) = 0 :=
sorry
