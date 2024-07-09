import Mathlib
open BigOperators

open MvPolynomial Set Nat

theorem putnam_2003_b3
(multicc : ℕ → ℕ → Prop)
(lcmicc : ℕ → ℕ)
(hmulticc : ∀ n mult : ℕ, multicc n mult = ∀ i : Set.Icc 1 n, i.1 ∣ mult)
(hlcmicc : ∀ n : ℕ, multicc n (lcmicc n) ∧ (∀ n' : ℕ, multicc n n' → n' ≥ (lcmicc n)))
: ∀ n > 0, (n)! = ∏ i : Set.Icc 1 n, lcmicc (n / i.1) :=
sorry
