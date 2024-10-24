import Mathlib

open Set Nat

/--
Suppose that a finite group has exactly $n$ elements of order $p$, where $p$ is a prime. Prove that either $n = 0$ or $p$ divides $n+1$.
-/
theorem putnam_2007_a5
(G : Type*) [Group G] [Fintype G]
(p n : ℕ)
(hp : Nat.Prime p)
(hn : n = {g : G | orderOf g = p}.encard)
: n = 0 ∨ p ∣ (n + 1) :=
sorry
