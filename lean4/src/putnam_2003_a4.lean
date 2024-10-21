import Mathlib

open MvPolynomial

/--
Suppose that $a,b,c,A,B,C$ are real numbers, $a \ne 0$ and $A \ne 0$, such that $|ax^2+bx+c| \leq |Ax^2+Bx+C|$ for all real numbers $x$. Show that $|b^2-4ac| \leq |B^2-4AC|$.
-/
theorem putnam_2003_a4
(a b c A B C : ℝ)
(aAne0 : a ≠ 0 ∧ A ≠ 0)
(hle : ∀ x : ℝ, |a * x ^ 2 + b * x + c| ≤ |A * x ^ 2 + B * x + C|)
: |b ^ 2 - 4 * a * c| ≤ |B ^ 2 - 4 * A * C| :=
sorry
