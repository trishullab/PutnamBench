import Mathlib

open Topology MvPolynomial Filter Set

abbrev putnam_2009_b2_solution : Set ℝ := sorry
-- Ioc (1 / 3) 1
/--
A game involves jumping to the right on the real number line. If $a$ and $b$ are real numbers and $b > a$, the cost of jumping from $a$ to $b$ is $b^3-ab^2$. For what real numbers $c$ can one travel from $0$ to $1$ in a finite number of jumps with total cost exactly $c$?
-/
theorem putnam_2009_b2
: ({c : ℝ | ∃ s : ℕ → ℝ, s 0 = 0 ∧ StrictMono s ∧ (∃ n : ℕ, s n = 1 ∧ ((∑ i ∈ Finset.range n, ((s (i + 1)) ^ 3 - (s i) * (s (i + 1)) ^ 2)) = c))} = putnam_2009_b2_solution) :=
sorry
