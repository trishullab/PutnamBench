import Mathlib

open Classical
open scoped InnerProductSpace

abbrev putnam_1964_b4_solution : ℕ → ℕ := sorry
--fun n => n^2 - n + 2

/--
$n$ great circles on the sphere are in general position (in other words at most two circles pass through any two points on the sphere). How many regions do they divide the sphere into?
-/
theorem putnam_1964_b4
    {n : ℕ} (hn : 0 < n)
    -- `C` is a collection of `n` great circles on the sphere, i.e a collection of sets
    (C : Fin n → Set (EuclideanSpace ℝ (Fin 3)))
    --together with a collection of `n` normal vectors `v`
    (v : Fin n → EuclideanSpace ℝ (Fin 3))
    -- A great circle `C` is the intersection of a plane `{x | x · v = 0}` with `S`
    (hv : ∀ i, C i = Metric.sphere 0 1 ∩ {x : EuclideanSpace ℝ (Fin 3) | ⟪v i, x⟫_ℝ = 0 })
    --all the `v_i`'s are non-zero
    (hv' : ∀ i, v i ≠ 0)
    -- The circles in `C` are in general position
    (hT₂ : ∀ᵉ (x ∈ Metric.sphere 0 1) (y ∈ Metric.sphere 0 1),
      (Finset.univ.filter (fun i => {x, y} ⊆ (C i))).card ≤ 2)
    -- The predicate that a set `R ⊆ ℝ³` is a region bounded by the collection of circles
    (IsRegion : Set (EuclideanSpace ℝ (Fin 3)) → Prop)
    -- We can determine the points `x` in such a region by looking at the sign of their dot product
    -- with `n i` for `i : Fin n`
    (IsRegion_def : ∀ R, IsRegion R ↔ R.Nonempty ∧ ∃ sign : Fin n → SignType, (∀ i, sign i ≠ 0) ∧
      R = Metric.sphere 0 1 ∩ {x : EuclideanSpace ℝ (Fin 3) | ∀ i, signHom ⟪v i, x⟫_ℝ = sign i}) :
    {R | IsRegion R}.ncard = putnam_1964_b4_solution n :=
  sorry
