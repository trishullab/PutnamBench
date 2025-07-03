import Mathlib

open Filter Topology Set

abbrev putnam_2020_a3_solution : Prop := sorry
-- False
/--
Let $a_0 = \pi/2$, and let $a_n = \sin(a_{n-1})$ for $n \geq 1$. Determine whether
\[
\sum_{n=1}^\infty a_n^2
\]
converges.
-/
theorem putnam_2020_a3
  (a : ℕ → ℝ)
  (ha0 : a 0 = Real.pi / 2)
  (ha : ∀ n, a (n+1) = Real.sin (a n)) :
  (∃ L, Tendsto (fun m : ℕ => ∑ n ∈ Finset.Icc 1 m, (a n)^2) atTop (𝓝 L)) ↔ putnam_2020_a3_solution :=
sorry
