import Mathlib
open BigOperators

open Nat

-- Note: This formalization uses "Type" rather than "Type*" as the underlying structure for a semigroup.
abbrev putnam_1989_b2_solution : Prop := sorry
-- True
theorem putnam_1989_b2
(pow : (S : Type) → ℕ → S → S)
(hpow1 : ∀ (S : Type) (_ : Semigroup S), ∀ s : S, pow S 1 s = s)
(hpown : ∀ (S : Type) (_ : Semigroup S), ∀ s : S, ∀ n > 0, pow S (n + 1) s = s * (pow S n s))
: ((∀ (S : Type) (_ : Nonempty S) (_ : Semigroup S) (_ : IsCancelMul S), (∀ a : S, Finite {x | ∃ n : ℕ, n > 0 ∧ pow S n a = x}) → ∃ (_ : Group S), True) ↔ putnam_1989_b2_solution) :=
sorry
