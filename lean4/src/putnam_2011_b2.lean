import Mathlib

open Topology Filter Matrix

abbrev putnam_2011_b2_solution : Set ℕ := sorry
-- {2, 5}
/--
Let $S$ be the set of all ordered triples $(p,q,r)$ of prime numbers for which at least one rational number $x$ satisfies $px^2+qx+r=0$. Which primes appear in seven or more elements of $S$?
-/
theorem putnam_2011_b2
  (S : Set (Fin 3 → ℕ))
  (t : ℕ)
  (hS : S = {s : Fin 3 → ℕ | (s 0).Prime ∧ (s 1).Prime ∧ (s 2).Prime ∧ ∃ x : ℚ, (s 0) * x ^ 2 + (s 1) * x + (s 2) = 0}) :
  (t.Prime ∧ ({s ∈ S | ∃ i : Fin 3, s i = t}.encard ≥ 7))
  ↔ t ∈ putnam_2011_b2_solution :=
sorry
