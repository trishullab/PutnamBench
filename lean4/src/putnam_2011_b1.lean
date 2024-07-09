import Mathlib
open BigOperators

open Topology Filter Matrix

theorem putnam_2011_b1
(h k : ℤ)
(hkpos : h > 0 ∧ k > 0)
: ∀ ε > 0, ∃ m n : ℤ, m > 0 ∧ n > 0 ∧ ε < |h * Real.sqrt m - k * Real.sqrt n| ∧ |h * Real.sqrt m - k * Real.sqrt n| < 2 * ε :=
sorry
