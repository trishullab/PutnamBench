import Mathlib
open BigOperators

open Nat Topology Filter

theorem putnam_2004_a3
(u : ℕ → ℝ)
(hubase : u 0 = 1 ∧ u 1 = 1 ∧ u 2 = 1)
(hudet : ∀ n : ℕ, Matrix.det (fun i j : Fin 2 => u (n + i * 2 + j)) = (n)!)
: ∀ n : ℕ, ∃ m : ℤ, u n = m :=
sorry
