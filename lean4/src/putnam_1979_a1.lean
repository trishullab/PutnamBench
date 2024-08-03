import Mathlib
open BigOperators

abbrev putnam_1979_a1_solution : Multiset ℕ := sorry
-- Multiset.replicate 659 3 + {2}
theorem putnam_1979_a1
(P : Multiset ℕ → Prop)
(hP : P = fun a => Multiset.card a > 0 ∧ (∀ i ∈ a, i > 0) ∧ a.sum = 1979)
: P putnam_1979_a1_solution ∧ ∀ a : Multiset ℕ, P a → putnam_1979_a1_solution.prod ≥ a.prod :=
sorry
