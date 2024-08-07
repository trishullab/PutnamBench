import Mathlib
open BigOperators

open Topology Filter Nat

-- Note: uses (ℕ → ℕ) instead of (Fin k → ℕ)
abbrev putnam_1984_a6_solution : Prop × ℕ := sorry
-- (True, 4)
theorem putnam_1984_a6
(lastnzdig : List ℕ → ℕ)
(f : ℕ → ℕ)
(kadistinct : ℕ → (ℕ → ℕ) → Prop)
(hkadistinct : kadistinct = fun k : ℕ => fun a : ℕ → ℕ => (k ≥ 1 ∧ ∀ i j : Fin k, i ≠ j → a i ≠ a j))
(gpeq : (ℕ → ℕ) → ℕ → Prop)
(hgpeq : gpeq = fun g : ℕ → ℕ => fun p : ℕ => (p > 0 ∧ ∀ s ≥ 1, g s = g (s + p)))
(hlastnzdig : ∀ digs : List ℕ, (∃ i : Fin digs.length, digs[i] ≠ 0) → lastnzdig digs ≠ 0 ∧ (∃ i : Fin digs.length, digs[i] = lastnzdig digs ∧ ∀ j < i, digs[j] = 0))
(hf : ∀ n > 0, f n = lastnzdig (Nat.digits 10 (n)!))
: ∃ g : ℕ → ℕ, (∀ (k : ℕ) (a : ℕ → ℕ), kadistinct k a → g (∑ i : Fin k, a i) = f (∑ i : Fin k, 5 ^ (a i))) ∧
(if putnam_1984_a6_solution.1 = True then (gpeq g putnam_1984_a6_solution.2 ∧ ∀ p : ℕ, gpeq g p → p ≥ putnam_1984_a6_solution.2) else (¬∃ p : ℕ, gpeq g p)) :=
sorry
