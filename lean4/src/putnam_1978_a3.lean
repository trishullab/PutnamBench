import Mathlib

open Set Polynomial

abbrev putnam_1978_a3_solution : ℕ := sorry
-- 2
/--
Let $p(x) = 2(x^6 + 1) + 4(x^5 + x) + 3(x^4 + x^2) + 5x^3$. For $k$ with $0 < k < 5$, let
\[
I_k = \int_0^{\infty} \frac{x^k}{p(x)} \, dx.
\]
For which $k$ is $I_k$ smallest?
-/
theorem putnam_1978_a3
    (p : Polynomial ℝ)
    (hp : p = 2 * (X ^ 6 + 1) + 4 * (X ^ 5 + X) + 3 * (X ^ 4 + X ^ 2) + 5 * X ^ 3)
    (I : ℕ → ℝ)
    (hI : I = fun k ↦ ∫ x in Ioi 0, x ^ k / p.eval x) :
    IsLeast {y | ∃ k ∈ Ioo 0 5, I k = y} putnam_1978_a3_solution :=
  sorry
