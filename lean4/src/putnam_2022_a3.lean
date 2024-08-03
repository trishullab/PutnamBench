import Mathlib
open BigOperators

open Polynomial

theorem putnam_2022_a3
(p f : ℕ)
(hp : Nat.Prime p ∧ p > 5)
(hf : f = {a : ℕ → (ZMod p) | ∀ n : ℕ, a n ≠ 0 ∧ a n * a (n + 2) = 1 + a (n + 1)}.ncard)
: f ≡ 0 [MOD 5] ∨ f ≡ 2 [MOD 5] :=
sorry
