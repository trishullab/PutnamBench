import Mathlib
open BigOperators

open Topology Filter

theorem putnam_2000_a4
: ∃ y : ℝ, Tendsto (fun B : ℝ => ∫ x in Set.Ioo 0 B, Real.sin x * Real.sin (x ^ 2)) atTop (𝓝 y) :=
sorry
