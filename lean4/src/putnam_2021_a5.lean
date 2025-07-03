import Mathlib

open Filter Topology

abbrev putnam_2021_a5_solution : Set ℕ := sorry
-- {j : ℕ | ¬(42 ∣ j) ∧ ¬(46 ∣ j)}
/--
Let $A$ be the set of all integers $n$ such that $1 \leq n \leq 2021$ and $\gcd(n,2021)=1$. For every nonnegative integer $j$, let $S(j)=\sum_{n \in A}n^j$. Determine all values of $j$ such that $S(j)$ is a multiple of $2021$.
-/
theorem putnam_2021_a5
  (j : ℕ)
  (A : Finset ℕ)
  (S : ℕ → ℕ)
  (hA : A = {n | 1 ≤ n ∧ n ≤ 2021 ∧ Nat.gcd n 2021 = 1})
  (hS : ∀ j' : ℕ, S j' = ∑ n ∈ A, n ^ j') :
  (2021 ∣ S j) ↔ j ∈ putnam_2021_a5_solution :=
sorry
