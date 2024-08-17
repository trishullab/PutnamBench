import Mathlib
open BigOperators

open Set Filter Topology Real Polynomial Function

abbrev putnam_1985_b2_solution : ℕ → ℕ := sorry
-- fun n ↦ ite (n = 101) 99 0
theorem putnam_1985_b2
  (f : ℕ -> Polynomial ℕ)
  (hf0x : f 0 = 1)
  (hfn0 : ∀ n ≥ 1, (f n).eval 0 = 0)
  (hfderiv : ∀ n : ℕ, derivative (f (n + 1)) = (n + 1) * (Polynomial.comp (f n) (X + 1)))
  : Nat.factorization ((f 100).eval 1) = putnam_1985_b2_solution :=
sorry
