import Mathlib
open BigOperators

open Topology Filter

abbrev putnam_2017_b2_solution : ℕ := sorry
-- 16
theorem putnam_2017_b2
(mina : ℤ)
(hmina : mina ≥ 0)
(S : ℤ → ℕ → ℤ)
(p : ℤ → ℕ → Prop)
(q : ℤ → Prop)
(hS : S = fun a k ↦ ∑ i : Fin k, a + i)
(hp : p = fun N k ↦ ∃ a > 0, S a k = N)
(hq : q = fun N ↦ p N 2017 ∧ ∀ k : ℕ, k > 1 → k ≠ 2017 → ¬p N k)
(hqmina : q (S mina 2017))
(hminalb : ∀ a > 0, q (S a 2017) → mina ≤ a)
: (mina = putnam_2017_b2_solution) :=
sorry
