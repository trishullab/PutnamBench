import Mathlib

/--
Let $S$ be a set of rational numbers such that whenever $a$ and $b$ are members of $S$, so are $a+b$ and $ab$, and having the property that for every rational number $r$ exactly one of the following three statements is true: \[ r \in S, -r \in S, r = 0. \] Prove that $S$ is the set of all positive rational numbers.
-/
theorem putnam_1962_a6
(S : Set ℚ)
(hSadd : ∀ a ∈ S, ∀ b ∈ S, a + b ∈ S)
(hSprod : ∀ a ∈ S, ∀ b ∈ S, a * b ∈ S)
(hScond : ∀ r : ℚ, (r ∈ S ∨ -r ∈ S ∨ r = 0) ∧ ¬(r ∈ S ∧ -r ∈ S) ∧ ¬(r ∈ S ∧ r = 0) ∧ ¬(-r ∈ S ∧ r = 0))
: S = { r : ℚ | r > 0 } :=
sorry
