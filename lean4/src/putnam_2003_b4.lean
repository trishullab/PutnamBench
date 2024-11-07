import Mathlib

open MvPolynomial Set Nat

/--
Let $f(z)=az^4+bz^3+cz^2+dz+e=a(z-r_1)(z-r_2)(z-r_3)(z-r_4)$ where $a,b,c,d,e$ are integers, $a \neq 0$. Show that if $r_1+r_2$ is a rational number and $r_1+r_2 \neq r_3+r_4$, then $r_1r_2$ is a rational number.
-/
theorem putnam_2003_b4
  (f : ℝ → ℝ)
  (a b c d e : ℤ)
  (r1 r2 r3 r4 : ℝ)
  (ane0 : a ≠ 0)
  (hf1 : ∀ z, f z = a * z ^ 4 + b * z ^ 3 + c * z ^ 2 + d * z + e)
  (hf2 : ∀ z, f z = a * (z - r1) * (z - r2) * (z - r3) * (z - r4)) :
  (¬Irrational (r1 + r2) ∧ r1 + r2 ≠ r3 + r4) → ¬Irrational (r1 * r2) :=
sorry
