import Mathlib
open BigOperators

open Filter Topology Set Nat

def klimited (k n : ℕ) (s : Equiv.Perm (Fin n)) := ∀ i, |((s i) : ℤ) - i| ≤ k
theorem putnam_2008_b6
(n k : ℕ)
(hnk : n > 0 ∧ k > 0)
: Odd (Set.ncard {s : Equiv.Perm (Fin n) | klimited k n s}) ↔ (n ≡ 0 [MOD 2*k+1] ∨ n ≡ 1 [MOD 2*k+1]) :=
sorry
