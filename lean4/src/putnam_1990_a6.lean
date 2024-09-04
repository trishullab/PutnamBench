import Mathlib
open BigOperators

open Filter Topology Nat

abbrev putnam_1990_a6_solution : ℕ := sorry
-- 17711
theorem putnam_1990_a6 :
    ((Finset.univ : Finset <| Finset (Set.Icc 1 10) × Finset (Set.Icc 1 10)).filter
      fun ⟨S, T⟩ ↦ (∀ s ∈ S, T.card < s) ∧ (∀ t ∈ T, S.card < t)).card =
    putnam_1990_a6_solution := by
  sorry
