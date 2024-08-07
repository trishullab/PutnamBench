import Mathlib
open BigOperators

open Nat Set Topology Filter

theorem putnam_2002_b3
(e : ℝ)
(he : e = Real.exp 1)
(f : ℤ → ℝ)
(hf : f = fun n : ℤ => 1/e - (1 - 1/n)^n)
: ∀ n : ℤ, n > 1 → 1/(2*n*e) < f n ∧ f n < 1/(n*e) :=
sorry
