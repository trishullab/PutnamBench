import Mathlib

open Set Real Filter Topology Polynomial

/--
Show that we can find integers $a, b, c, d$ such that $a^2 + b^2 + c^2 + d^2 = abc + abd + acd + bcd$, and the smallest of $a, b, c, d$ is arbitrarily large.
-/
theorem putnam_1978_b4 :
  ∀ N : ℝ,
    ∃ a b c d : ℤ,
      a > N ∧ b > N ∧ c > N ∧ d > N ∧
      a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 = a * b * c + a * b * d + a * c * d + b * c * d :=
sorry
