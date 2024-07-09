import Mathlib
open BigOperators

open Set Filter Topology Real Polynomial Function

abbrev putnam_1985_b2_solution : ℕ → ℕ := sorry
-- fun n ↦ ite (n = 101) 99 0
theorem putnam_1985_b2
(f : ℕ → ℝ → ℝ)
(hf0x : ∀ x : ℝ, f 0 x = 1)
(hfn0 : ∀ n ≥ 1, f n 0 = 0)
(hfderiv : ∀ x : ℝ, ∀ n, deriv (f (n + 1)) x = (n + 1) * f n (x + 1))
: (∃ a : ℕ, a = f 100 1 ∧ Nat.factorization a = putnam_1985_b2_solution) :=
sorry
