import Mathlib

open Topology Filter Nat

abbrev putnam_2014_a6_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => n ^ n)
/--
Let \( n \) be a positive integer. What is the largest \( k \) for which there exist \( n \times n \) matrices \( M_1, \ldots, M_k \) and \( N_1, \ldots, N_k \) with real entries such that for all \( i \) and \( j \), the matrix product \( M_i N_j \) has a zero entry somewhere on its diagonal if and only if \( i \neq j \)?
-/
theorem putnam_2014_a6
(n : ℕ)
(kex : ℕ → Prop)
(npos : n > 0)
(hkex : ∀ k ≥ 1, kex k = ∃ M N : Fin k → Matrix (Fin n) (Fin n) ℝ, ∀ i j : Fin k, ((∃ p : Fin n, (M i * N j) p p = 0) ↔ i ≠ j))
: (putnam_2014_a6_solution n ≥ 1 ∧ kex (putnam_2014_a6_solution n)) ∧ (∀ k ≥ 1, kex k → k ≤ putnam_2014_a6_solution n) :=
sorry
