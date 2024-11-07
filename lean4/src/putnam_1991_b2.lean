import Mathlib

open Filter Topology

/--
Suppose $f$ and $g$ are non-constant, differentiable, real-valued functions defined on $(-\infty,\infty)$. Furthermore, suppose that for each pair of real numbers $x$ and $y$,
\begin{align*}
f(x+y)&=f(x)f(y)-g(x)g(y), \\
g(x+y)&=f(x)g(y)+g(x)f(y).
\end{align*}
If $f'(0)=0$, prove that $(f(x))^2+(g(x))^2=1$ for all $x$.
-/
theorem putnam_1991_b2
  (f g : ℝ → ℝ)
  (fgnconst : ¬∃ c, f = Function.const ℝ c ∨ g = Function.const ℝ c)
  (fgdiff : Differentiable ℝ f ∧ Differentiable ℝ g)
  (fadd : ∀ x y, f (x + y) = f x * f y - g x * g y)
  (gadd : ∀ x y, g (x + y) = f x * g y + g x * f y) :
  (deriv f 0 = 0) → (∀ x, (f x) ^ 2 + (g x) ^ 2 = 1) :=
sorry
