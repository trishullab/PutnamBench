import Mathlib

open Metric Set EuclideanGeometry

/--
Let $A$, $B$, $C$, $D$, $E$, $F$, and $G$ be real numbers satisfying $B^2 - 4AC < 0$. Prove that there exists some $\delta > 0$ such that no points $(x, y)$ in the punctured disk $0 < x^2 + y^2 < \delta$ satisfy $$Ax^2 + Bxy + Cy^2 + Dx^3 + Ex^2y + Fxy^2 + Gy^3 = 0.$$
-/
theorem putnam_1970_a2
(A B C D E F G : ℝ)
(hle : B^2 - 4*A*C < 0)
: ∃ δ > 0, ¬∃ x y : ℝ, x^2 + y^2 ∈ Set.Ioo 0 (δ^2) ∧
A*x^2 + B*x*y + C*y^2 + D*x^3 + E*x^2*y + F*x*y^2 + G*y^3 = 0 :=
sorry
