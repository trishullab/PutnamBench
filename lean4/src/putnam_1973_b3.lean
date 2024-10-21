import Mathlib

open Nat Set MeasureTheory Topology Filter

/--
Let $p > 1$ be an integer with the property that $x^2 - x + p$ is prime for all $x$ in the range $0 < x < p$. Show there exists exactly one triple of integers $a,b,c$ satisfying $b^2 - 4ac = 1 - 4p$, $0 < a \leq c$, and $-a \leq b < a$.
-/
theorem putnam_1973_b3
(p : ℕ)
(pgt1 : p > 1)
(hprime : ∀ x ∈ Set.Ico 0 p, Nat.Prime (x^2 - x + p))
: ∃! triple : ℤ × ℤ × ℤ, let (a,b,c) := triple; b^2 - 4*a*c = 1 - 4*p ∧ 0 < a ∧ a ≤ c ∧ -a ≤ b ∧ b < a :=
sorry
