import Mathlib

open Nat Set Topology Filter

/--
Show that, for all integers $n > 1$,
\[
\frac{1}{2ne} < \frac{1}{e} - \left( 1 - \frac{1}{n} \right)^n
< \frac{1}{ne}.
\]
-/
theorem putnam_2002_b3
(e : ℝ)
(he : e = Real.exp 1)
(f : ℤ → ℝ)
(hf : f = fun n : ℤ => 1/e - (1 - 1/n)^n)
: ∀ n : ℤ, n > 1 → 1/(2*n*e) < f n ∧ f n < 1/(n*e) :=
sorry
