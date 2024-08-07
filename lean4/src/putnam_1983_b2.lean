import Mathlib
open BigOperators

open Nat Filter Topology Real

abbrev putnam_1983_b2_solution : Prop := sorry
-- True
theorem putnam_1983_b2
(f : ℕ+ → ℕ)
(hf : f = fun (n : ℕ+) ↦ {M : Multiset ℕ | (∀ m ∈ M, ∃ k : ℕ, m = (2 ^ k : ℤ)) ∧ (∀ m ∈ M, M.count m ≤ 3) ∧ (M.sum : ℤ) = n}.ncard)
: ((∃ p : Polynomial ℝ, ∀ n : ℕ+, ⌊p.eval (n : ℝ)⌋ = f n) ↔ putnam_1983_b2_solution) :=
sorry
