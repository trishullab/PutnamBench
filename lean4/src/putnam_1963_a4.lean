import Mathlib
open BigOperators

open Topology Filter

theorem putnam_1963_a4
(apos : (ℕ → ℝ) → Prop := fun a => ∀ n, a n > 0)
(f : (ℕ → ℝ) → ℕ → ℝ := fun a n => n * (((1 + a (n+1)) / (a n)) - 1))
: (∀ a, apos a → limsup (f a) ⊤ ≥ 1) ∧ (∃ a, apos a ∧ limsup (f a) ⊤ = 1) :=
sorry
