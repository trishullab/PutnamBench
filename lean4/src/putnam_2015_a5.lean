import Mathlib
open BigOperators

theorem putnam_2015_a5
(q : ℕ)
(Nq : ℕ)
(qodd : Odd q)
(qpos : q > 0)
(hNq : Nq = {a : ℕ | 0 < a ∧ a < (q : ℝ) / 4 ∧ Nat.gcd a q = 1}.encard)
: Odd Nq ↔ ∃ p k : ℕ, q = p ^ k ∧ k > 0 ∧ p.Prime ∧ (p % 8 = 5 ∨ p % 8 = 7) :=
sorry
