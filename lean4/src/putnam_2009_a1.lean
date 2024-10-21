import Mathlib

open Topology MvPolynomial Filter

abbrev putnam_2009_a1_solution : Prop := sorry
-- True
/--
Let $f$ be a real-valued function on the plane such that for every square $ABCD$ in the plane, $f(A)+f(B)+f(C)+f(D)=0$. Does it follow that $f(P)=0$ for all points $P$ in the plane?
-/
theorem putnam_2009_a1
: ((∀ f : (ℝ × ℝ) → ℝ, (∀ O v : ℝ × ℝ, v ≠ (0, 0) → f (O.1, O.2) + f (O.1 + v.1, O.2 + v.2) + f (O.1 + v.1 - v.2, O.2 + v.2 + v.1) + f (O.1 - v.2, O.2 + v.1) = 0) → ∀ P : ℝ × ℝ, f P = 0) ↔ putnam_2009_a1_solution) :=
sorry
