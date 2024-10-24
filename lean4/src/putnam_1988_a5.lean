import Mathlib

open Set Filter Topology

/--
Prove that there exists a \emph{unique} function $f$ from the set $\mathrm{R}^+$ of positive real numbers to $\mathrm{R}^+$ such that
\[
f(f(x)) = 6x-f(x)
\]
and
\[
f(x)>0
\]
for all $x>0$.
-/
theorem putnam_1988_a5
: (∃ f : ℝ → ℝ, (∀ x > 0, f (f x) = 6 * x - f x ∧ f x > 0) ∧ (∀ g : ℝ → ℝ, (∀ x > 0, g (g x) = 6 * x - g x ∧ g x > 0) → (∀ x > 0, f x = g x))) :=
sorry
