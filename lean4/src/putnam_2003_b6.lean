import Mathlib

open MvPolynomial Set Nat

/--
Let  $f(x)$  be  a continuous real-valued function defined on the interval $[0,1]$. Show that \[ \int_0^1 \int_0^1 | f(x) + f(y) |\,dx\,dy \geq \int_0^1 |f(x)|\,dx. \]
-/
theorem putnam_2003_b6
(f : ℝ → ℝ)
(hf : Continuous f)
: (∫ x in (0 : ℝ)..1, (∫ y in (0 : ℝ)..1, |f x + f y|)) ≥ (∫ x in (0 : ℝ)..1, |f x|) :=
sorry
