import Mathlib

open Topology Filter Polynomial Set

/--
Prove that there are unique positive integers $a$, $n$ such that $a^{n+1}-(a+1)^n=2001$.
-/
theorem putnam_2001_a5
: ∃! an : ℤ × ℕ, let (a, n) := an; a > 0 ∧ n > 0 ∧ a^(n+1) - (a+1)^n = 2001 :=
sorry
