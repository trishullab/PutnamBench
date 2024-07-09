import Mathlib
open BigOperators

open Polynomial Filter Topology Real Set Nat

abbrev putnam_2016_a1_solution : ℕ := sorry
-- 8
theorem putnam_2016_a1
: (∀ j : ℕ+, (∀ P : ℤ[X], ∀ k : ℤ, 2016 ∣ (derivative^[j] P).eval k) → j ≥ putnam_2016_a1_solution) ∧ (∀ P : ℤ[X], ∀ k : ℤ, 2016 ∣ (derivative^[putnam_2016_a1_solution] P).eval k) :=
sorry
