import Mathlib

open Topology Filter

/--
Show that the improper integral $\lim_{B \to \infty} \int_0^B \sin(x)\sin(x^2)\,dx$ converges.
-/
theorem putnam_2000_a4
: ∃ y : ℝ, Tendsto (fun B : ℝ => ∫ x in Set.Ioo 0 B, Real.sin x * Real.sin (x ^ 2)) atTop (𝓝 y) :=
sorry
