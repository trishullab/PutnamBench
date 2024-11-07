import Mathlib

open Polynomial Filter Topology Real Set Nat

abbrev putnam_2016_a1_solution : ℕ := sorry
-- 8
/--
Find the smallest positive integer $j$ such that for every polynomial $p(x)$ with integer coefficients and for every integer $k$, the integer \[ p^{(j)}(k) = \left. \frac{d^j}{dx^j} p(x) \right|_{x=k} \] (the $j$-th derivative of $p(x)$ at $k$) is divisible by 2016.
-/
theorem putnam_2016_a1 :
  IsLeast {j : ℕ | 0 < j ∧ ∀ P : ℤ[X], ∀ k : ℤ, 2016 ∣ (derivative^[j] P).eval k} putnam_2016_a1_solution :=
sorry
