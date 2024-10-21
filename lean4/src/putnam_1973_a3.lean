import Mathlib

open Nat Set MeasureTheory Topology Filter

/--
Let $n$ be a fixed positive integer and let $b(n)$ be the minimum value of $k + \frac{n}{k}$ as $k$ is allowed to range through all positive integers. Prove that $b(n)$ and $\sqrt{4n + 1}$ have the same integer part.
-/
theorem putnam_1973_a3
(b : ℤ → ℝ)
(hb : b = fun (n : ℤ) => sInf {k + (n : ℝ)/(k : ℝ) | k > (0 : ℤ)})
: ∀ n : ℤ, n > 0 → floor (b n) = floor (Real.sqrt (4 * n + 1)) :=
sorry
