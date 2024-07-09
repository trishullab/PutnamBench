import Mathlib
open BigOperators

open Filter Topology

theorem putnam_1991_b4
(p : ℕ)
(podd : Odd p)
(pprime : Prime p)
: (∑ j : Fin (p + 1), (p.choose j) * ((p + j).choose j)) ≡ (2 ^ p + 1) [MOD (p ^ 2)] :=
sorry
