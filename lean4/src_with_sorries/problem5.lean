import src.allimports
open BigOperators Real Nat Topology

/--
Prove that x * x mod 4 = 0 → x mod 4 = 0 ∨ x mod 4 = 2.
-/
theorem problem_5 (x : ℕ)
(h : x * x % 4 = 0) :
x % 4 = 2 ∨ x % 4 = 0 :=
sorry
