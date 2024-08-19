import Mathlib
open BigOperators

open EuclideanGeometry Filter Topology Set

-- Note: uses (ℝ → ℝ) instead of (Set.Icc 0 1 → ℝ)
abbrev putnam_1972_a3_solution : Set (ℝ → ℝ) := sorry
-- {f | ∃ A B : ℝ, ∀ x ∈ Set.Icc 0 1, f x = A * x + B}
theorem putnam_1972_a3
(climit_exists : (ℕ → ℝ) → Prop)
(hclimit_exists : climit_exists = fun x => ∃ C : ℝ, Tendsto (fun n => (∑ i in Finset.range n, (x i))/(n : ℝ)) atTop (𝓝 C))
(supercontinuous : (ℝ → ℝ) → Prop)
(hsupercontinuous : supercontinuous = fun f => ∀ (x : ℕ → ℝ), (∀ i : ℕ, x i ∈ Icc 0 1) → climit_exists x → climit_exists (fun i => f (x i)))
: {f | supercontinuous f} = putnam_1972_a3_solution :=
sorry
