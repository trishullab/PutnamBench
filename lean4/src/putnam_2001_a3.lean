import Mathlib

open Topology Filter Polynomial Set

abbrev putnam_2001_a3_solution : Set ℤ := sorry
-- {m : ℤ | ∃ k : ℤ, k^2 = m ∨ 2*k^2 = m}
/--
For each integer $m$, consider the polynomial
\[P_m(x)=x^4-(2m+4)x^2+(m-2)^2.\] For what values of $m$ is $P_m(x)$
the product of two non-constant polynomials with integer coefficients?
-/
theorem putnam_2001_a3
(P : ℤ → Polynomial ℤ)
(hP : P = fun m : ℤ => (Polynomial.X)^4 - (Polynomial.C (2*m + 4))*(Polynomial.X)^2 + Polynomial.C ((m - 2)^2))
: {m : ℤ | ∃ a b, P m = a * b ∧
(∃ n ∈ Ici 1, a.coeff n ≠ 0) ∧ (∃ n ∈ Ici 1, b.coeff n ≠ 0)} = putnam_2001_a3_solution :=
sorry
