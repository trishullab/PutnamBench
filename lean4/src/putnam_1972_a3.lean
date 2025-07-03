import Mathlib

open EuclideanGeometry Filter Topology Set

-- Note: uses (ℝ → ℝ) instead of (Set.Icc 0 1 → ℝ)
abbrev putnam_1972_a3_solution : Set (ℝ → ℝ) := sorry
-- {f | ∃ A B : ℝ, ∀ x ∈ Set.Icc 0 1, f x = A * x + B}
/--
We call a function $f$ from $[0,1]$ to the reals to be supercontinuous on $[0,1]$ if the Cesaro-limit exists for the sequence $f(x_1), f(x_2), f(x_3), \dots$ whenever it does for the sequence $x_1, x_2, x_3 \dots$. Find all supercontinuous functions on $[0,1]$.
-/
theorem putnam_1972_a3
    (climit_exists : (ℕ → ℝ) → Prop)
    (supercontinuous : (ℝ → ℝ) → Prop)
    (hclimit_exists : ∀ x, climit_exists x ↔ ∃ C : ℝ, Tendsto (fun n => (∑ i ∈ Finset.range n, (x i))/(n : ℝ)) atTop (𝓝 C))
    (hsupercontinuous : ∀ f, supercontinuous f ↔ ∀ (x : ℕ → ℝ), (∀ i : ℕ, x i ∈ Icc 0 1) → climit_exists x → climit_exists (fun i => f (x i))) :
    {f | supercontinuous f} = putnam_1972_a3_solution :=
  sorry
