import Mathlib
open BigOperators

open Nat

abbrev putnam_2002_a1_solution : ℕ → ℕ → ℝ := sorry
-- (fun k n : ℕ => (-k) ^ n * (n)!)
theorem putnam_2002_a1
(k : ℕ)
(P : ℕ → Polynomial ℝ)
(kpos : k > 0)
(Pderiv : ∀ n : ℕ, ∀ x : ℝ, iteratedDeriv n (fun x' : ℝ => 1 / (x' ^ k - 1)) x = ((P n).eval x) / ((x ^ k - 1) ^ (n + 1)))
: ∀ n : ℕ, (P n).eval 1 = putnam_2002_a1_solution k n :=
sorry
