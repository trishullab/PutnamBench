import Mathlib

open Nat Filter Topology Real

abbrev putnam_1983_b2_solution : Prop := sorry
-- True
/--
Let $f(n)$ be the number of ways of representing $n$ as a sum of powers of $2$ with no power being used more than $3$ times. For example, $f(7) = 4$ (the representations are $4 + 2 + 1$, $4 + 1 + 1 + 1$, $2 + 2 + 2 + 1$, $2 + 2 + 1 + 1 + 1$). Can we find a real polynomial $p(x)$ such that $f(n) = [p(n)]$, where $[u]$ denotes the greatest integer less than or equal to $u$?
-/
theorem putnam_1983_b2
    (f : ℕ+ → ℕ)
    (hf : f = fun (n : ℕ+) ↦
      Set.ncard {M : Multiset ℕ |
        (∀ m ∈ M, ∃ k : ℕ, m = (2 ^ k : ℤ)) ∧
        (∀ m ∈ M, M.count m ≤ 3) ∧
        (M.sum : ℤ) = n}) :
    putnam_1983_b2_solution ↔
      (∃ p : Polynomial ℝ, ∀ n : ℕ+, ⌊p.eval (n : ℝ)⌋ = f n) :=
  sorry
