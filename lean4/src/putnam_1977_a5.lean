import Mathlib
open BigOperators

open RingHom Set Nat

theorem putnam_1977_a5
(p m n : ℕ)
(hp : Nat.Prime p)
(hmgen : m ≥ n)
: (choose (p * m) (p * n) ≡ choose m n [MOD p]) :=
sorry
