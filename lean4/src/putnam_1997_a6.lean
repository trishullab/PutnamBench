import Mathlib
open BigOperators

open Filter Topology

abbrev putnam_1997_a6_solution : ℤ → ℤ → ℝ := sorry
-- fun n k => Nat.choose (n.toNat-1) (k.toNat-1)
theorem putnam_1997_a6
(n : ℤ)
(hn : n > 0)
(C : ℝ)
(x : ℝ → (ℤ → ℝ))
(hx0 : ∀ c : ℝ, x c 0 = 0)
(hx1 : ∀ c : ℝ, x c 1 = 1)
(hxk : ∀ c : ℝ, ∀ k ≥ 0, x c (k + 2) = (c*(x c (k + 1)) - (n - k)*(x c k))/(k + 1))
(S : Set ℝ)
(hS : S = {c : ℝ | x c (n + 1) = 0})
(hC : C = sSup S)
: ∀ k : Set.Icc 1 n, x C k = putnam_1997_a6_solution n k :=
sorry
