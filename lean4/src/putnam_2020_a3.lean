import Mathlib
open BigOperators

open Filter Topology Set

abbrev putnam_2020_a3_solution : Prop := sorry
-- False
theorem putnam_2020_a3
(a : ℕ → ℝ)
(ha0 : a 0 = Real.pi / 2)
(ha : ∀ n : ℕ, n ≥ 1 → a n = Real.sin (a (n - 1)))
: (∃ L : ℝ, Tendsto (fun m : ℕ => ∑ n : Icc 1 m, (a n)^2) atTop (𝓝 L)) ↔ putnam_2020_a3_solution :=
sorry
