import Mathlib
open BigOperators

open Filter Topology Bornology Set Polynomial

def tetration : ℕ → ℕ → ℕ
  | _, 0 => 1
  | b, (m + 1) => b^(tetration b m)
theorem putnam_1997_b5
(n : ℕ)
(hn : n ≥ 2)
: tetration 2 n ≡ tetration 2 (n-1) [MOD n] :=
sorry
