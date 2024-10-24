import Mathlib

open Filter Topology Nat

abbrev putnam_1990_b1_solution : Set (ℝ → ℝ) := sorry
-- {fun x : ℝ => (Real.sqrt 1990) * Real.exp x, fun x : ℝ => -(Real.sqrt 1990) * Real.exp x}
/--
Find all real-valued continuously differentiable functions $f$ on the real line such that for all $x$, $(f(x))^2=\int_0^x [(f(t))^2+(f'(t))^2]\,dt+1990$.
-/
theorem putnam_1990_b1
    (P : (ℝ → ℝ) → Prop)
    (P_def : ∀ f, P f ↔ ∀ x,
      (f x) ^ 2 = (∫ t in (0 : ℝ)..x, (f t) ^ 2 + (deriv f t) ^ 2) + 1990)
    (f : ℝ → ℝ) :
    (ContDiff ℝ 1 f ∧ P f) ↔ f ∈ putnam_1990_b1_solution :=
  sorry
