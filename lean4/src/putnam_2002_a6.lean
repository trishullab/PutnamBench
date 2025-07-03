import Mathlib

open Nat Set Topology Filter

abbrev putnam_2002_a6_solution : Set ℕ := sorry
-- {2}
/--
Fix an integer $b \geq 2$. Let $f(1) = 1$, $f(2) = 2$, and for each
$n \geq 3$, define $f(n) = n f(d)$, where $d$ is the number of
base-$b$ digits of $n$. For which values of $b$ does
\[
\sum_{n=1}^\infty \frac{1}{f(n)}
\]
converge?
-/
theorem putnam_2002_a6
(f : ℕ → ℕ → ℝ)
(hf : ∀ b : ℕ, f b 1 = 1 ∧ f b 2 = 2 ∧ ∀ n ∈ Ici 3, f b n = n * f b (Nat.digits b n).length)
: {b ∈ Ici 2 | ∃ L : ℝ, Tendsto (fun m : ℕ => ∑ n ∈ Finset.Icc 1 m, 1/(f b n)) atTop (𝓝 L)} = putnam_2002_a6_solution :=
sorry
