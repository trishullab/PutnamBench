import Mathlib

open MeasureTheory Metric Topology Filter

abbrev putnam_2019_a4_solution : Prop := sorry
-- False
/--
Let $f$ be a continuous real-valued function on $\mathbb{R}^3$. Suppose that for every sphere $S$ of radius $1$, the integral of $f(x,y,z)$ over the surface of $S$ equals $0$. Must $f(x,y,z)$ be identically 0?
-/
theorem putnam_2019_a4
    (P : (EuclideanSpace ℝ (Fin 3) → ℝ) → Prop)
    (P_def : ∀ f, P f ↔ ∀ C, ∫ x in sphere C 1, f x ∂μH[2] = 0) :
    (∀ f, Continuous f → P f → f = 0) ↔ putnam_2019_a4_solution :=
  sorry
