import Mathlib
open BigOperators

open Polynomial Real Complex Matrix Filter Topology Multiset

noncomputable abbrev putnam_1975_b3_solution : ℕ → ℝ := sorry
-- fun k : ℕ => 1/(Nat.factorial k)
theorem putnam_1975_b3
: ∀ k : ℕ, k > 0 → (∀ a : Multiset ℝ, (∀ i ∈ a, i > 0) ∧ card a ≥ k →
(esymm a k)/(esymm a 1)^k ≤ putnam_1975_b3_solution k) ∧
∀ M : ℝ, M < putnam_1975_b3_solution k → (∃ a : Multiset ℝ, (∀ i ∈ a, i > 0) ∧ card a ≥ k ∧
(esymm a k)/(esymm a 1)^k > M) :=
sorry
