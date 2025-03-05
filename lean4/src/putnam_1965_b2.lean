import Mathlib

open EuclideanGeometry Topology Filter Complex

/--
A round-robin tournament has $n > 1$ players $P_1, P_2, \dots, P_n$, who each play one game with each other player. Each game results in a win for one player and a loss for the other. If $w_r$ and $l_r$ denote the number of games won and lost, respectively, by $P_r$, prove that $$\sum_{r=1}^{n} w_r^2 = \sum_{r=1}^{n} l_r^2.$$
-/
theorem putnam_1965_b2
(n : ℕ)
(hn : n > 1)
(won : Fin n → Fin n → Bool)
(hirrefl : ∀ i : Fin n, won i i = false)
(hantisymm : ∀ i j : Fin n, i ≠ j → won i j = ¬won j i)
(w l : Fin n → ℤ)
(hw : w = fun r : Fin n => ∑ j : Fin n, (if won r j then 1 else 0))
(hl : l = fun r : Fin n => n - 1 - w r)
: ∑ r : Fin n, (w r)^2 = ∑ r : Fin n, (l r)^2 :=
sorry
