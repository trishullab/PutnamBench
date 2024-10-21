import Mathlib

open EuclideanGeometry Topology Filter Complex

/--
Prove that there are exactly three right triangles (up to orientation and translation) with integer side lengths and area equal to twice their perimeter.
-/
theorem putnam_1965_b3
: {(a, b, c) : ℤ × ℤ × ℤ | a > 0 ∧ a ≤ b ∧ c > 0 ∧ a^2 + b^2 = c^2 ∧ a*b/(2 : ℚ) = 2*(a + b + c)}.ncard = 3 :=
sorry
