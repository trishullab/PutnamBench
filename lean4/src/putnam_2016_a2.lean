import Mathlib
open BigOperators

open Polynomial Filter Topology Real Set Nat

noncomputable abbrev putnam_2016_a2_solution : ℝ := sorry
-- (3 + √ 5) / 2
theorem putnam_2016_a2
    (M : ℕ → ℕ)
    (hM : ∀ n > 0, IsGreatest {m | 0 < m ∧ (m - 1).choose n < m.choose (n - 1)} (M n)) :
    Tendsto (fun n ↦ M n / (n : ℝ)) atTop (𝓝 putnam_2016_a2_solution) :=
  sorry
