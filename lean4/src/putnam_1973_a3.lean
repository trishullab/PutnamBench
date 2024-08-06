import Mathlib
open BigOperators

open Nat Set MeasureTheory Topology Filter

theorem putnam_1973_a3
(b : ℤ → ℝ)
(hb : b = fun (n : ℤ) => sInf {k + (n : ℝ)/(k : ℝ) | k > (0 : ℤ)})
: ∀ n : ℤ, n > 0 → floor (b n) = floor (Real.sqrt (4 * n + 1)) :=
sorry
