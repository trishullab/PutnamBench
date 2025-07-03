import Mathlib

open Set Filter Topology Real

abbrev putnam_1985_a5_solution : Set ℕ := sorry
-- {3, 4, 7, 8}
/--
Let $I_m = \int_0^{2\pi} \cos(x)\cos(2x)\cdots \cos(mx)\,dx$. For which integers $m$, $1 \leq m \leq 10$ is $I_m \neq 0$?
-/
theorem putnam_1985_a5
    (I : ℕ → ℝ)
    (hI : I = fun (m : ℕ) ↦ ∫ x in (0)..(2 * Real.pi), ∏ k ∈ Finset.Icc 1 m, cos (k * x)) :
    {m ∈ Finset.Icc 1 10 | I m ≠ 0} = putnam_1985_a5_solution :=
  sorry
