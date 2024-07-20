import Mathlib
open BigOperators

open Nat

theorem putnam_1989_a6
(F : Type*) [Field F] [Fintype F]
(hF : Fintype.card F = 2)
(α : PowerSeries F)
(hα : ∀ n : ℕ, let bin := [1] ++ (digits 2 n) ++ [1]; PowerSeries.coeff F n α = ite (∀ i j : Fin bin.length, i < j → bin.get i = 1 → bin.get j = 1 → (∀ k, i < k → k < j → bin.get k = 0) → Even ((j : ℕ) - (i : ℕ) - 1)) 1 0)
: (α ^ 3 + PowerSeries.X * α + 1 = 0) :=
sorry
