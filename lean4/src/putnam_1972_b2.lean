import Mathlib

open EuclideanGeometry Filter Topology Set MeasureTheory Metric

noncomputable abbrev putnam_1972_b2_solution : ℝ → ℝ → ℝ := sorry
-- fun s v : ℝ ↦ 2 * s / v
/--
Let $x : \mathbb{R} \to \mathbb{R}$ be a twice differentiable function whose second derivative is nonstrictly decreasing. If $x(t) - x(0) = s$, $x'(0) = 0$, and $x'(t) = v$ for some $t > 0$, find the maximum possible value of $t$ in terms of $s$ and $v$.
-/
theorem putnam_1972_b2
    (s v : ℝ)
    (hs : s > 0)
    (hv : v > 0)
    (valid : ℝ → (ℝ → ℝ) → Prop)
    (hvalid : ∀ t x, valid t x ↔
      DifferentiableOn ℝ x (Set.Icc 0 t) ∧ DifferentiableOn ℝ (deriv x) (Set.Icc 0 t) ∧
      AntitoneOn (deriv (deriv x)) (Set.Icc 0 t) ∧
      deriv x 0 = 0 ∧ deriv x t = v ∧ x t - x 0 = s)
    : IsGreatest {t | ∃ x : ℝ → ℝ, valid t x} (putnam_1972_b2_solution s v) :=
  sorry
