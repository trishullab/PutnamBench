import Mathlib
open BigOperators

open Topology Filter

abbrev putnam_2019_a5_solution : ℕ → ℕ := sorry
-- (fun p : ℕ => (p - 1) / 2)
theorem putnam_2019_a5
(p : ℕ)
(q : Polynomial (ZMod p))
(a : ℕ → ZMod p)
(npoly : ℕ → Polynomial (ZMod p))
(ndiv : ℕ → Prop)
(podd : Odd p)
(pprime : p.Prime)
(hq : ∀ k : ℕ, q.coeff k = a k)
(ha0 : a 0 = 0 ∧ ∀ k > p - 1, a k = 0)
(haother : ∀ k : Set.Icc 1 (p - 1), a k = ((k : ℕ) ^ ((p - 1) / 2)) % p)
(hnpoly : ∀ n : ℕ, ∀ x : ZMod p, (npoly n).eval x = (x - 1) ^ n)
(hndiv : ∀ n : ℕ, ndiv n = (npoly n ∣ q))
: ndiv (putnam_2019_a5_solution p) ∧ ∀ n, ndiv n → n ≤ (putnam_2019_a5_solution p) :=
sorry
