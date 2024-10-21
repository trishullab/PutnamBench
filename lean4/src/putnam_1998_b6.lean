import Mathlib

open Set Function Metric

/--
Prove that, for any integers $a, b, c$, there exists a positive integer $n$ such that $\sqrt{n^3+an^2+bn+c}$ is not an integer.
-/
theorem putnam_1998_b6
: ∀ a b c : ℤ, ∃ n : ℤ, n > 0 ∧ ¬(∃ k : ℤ, k = Real.sqrt (n^3 + a * n^2 + b * n + c)) :=
sorry
