import Mathlib

abbrev putnam_1979_a1_solution : Multiset ℕ := sorry
-- Multiset.replicate 659 3 + {2}
/--
For which positive integers $n$ and $a_1, a_2, \dots, a_n$ with $\sum_{i = 1}^{n} a_i = 1979$ does $\prod_{i = 1}^{n} a_i$ attain the greatest value?
-/
theorem putnam_1979_a1
    (P : Multiset ℕ → Prop)
    (hP : ∀ a, P a ↔ Multiset.card a > 0 ∧ (∀ i ∈ a, i > 0) ∧ a.sum = 1979) :
    P putnam_1979_a1_solution ∧ ∀ a : Multiset ℕ, P a → putnam_1979_a1_solution.prod ≥ a.prod :=
  sorry
