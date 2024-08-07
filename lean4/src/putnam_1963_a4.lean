import Mathlib
open BigOperators

open Topology Filter

theorem putnam_1963_a4
(apos : (ℕ → ℝ) → Prop)
(hapos : apos = fun a => ∀ n, a n > 0)
(f : (ℕ → ℝ) → ℕ → ℝ)
(hf : f = fun (a : ℕ → ℝ) n => n * (((1 + a (n+1)) / (a n)) - 1))
: (∀ a, apos a → limsup (f a) atTop ≥ 1) ∧ (¬∃ c > 1, ∀ a, apos a → limsup (f a) atTop ≥ c) :=
sorry
