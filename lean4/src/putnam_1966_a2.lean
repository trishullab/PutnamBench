import Mathlib

/--
Let $a$, $b$, and $c$ be the side lengths of a triangle with inradius $r$. If $p = \frac{a + b + c}{2}$, show that $$\frac{1}{(p - a)^2} + \frac{1}{(p - b)^2} + \frac{1}{(p - c)^2} \ge \frac{1}{r^2}.$$
-/
theorem putnam_1966_a2
(r : ℝ)
(A B C : EuclideanSpace ℝ (Fin 2))
(hABC : ¬Collinear ℝ {A, B, C})
(a b c p : ℝ)
(ha : a = dist B C)
(hb : b = dist C A)
(hc : c = dist A B)
(hp : p = (dist B C + dist C A + dist A B)/2)
(hr : ∃ I : EuclideanSpace ℝ (Fin 2),
(∃! P : EuclideanSpace ℝ (Fin 2), dist I P = r ∧ Collinear ℝ {P, B, C}) ∧
(∃! Q : EuclideanSpace ℝ (Fin 2), dist I Q = r ∧ Collinear ℝ {Q, C, A}) ∧
(∃! R : EuclideanSpace ℝ (Fin 2), dist I R = r ∧ Collinear ℝ {R, A, B}) ∧
(∀ Z : EuclideanSpace ℝ (Fin 2), dist I Z ≤ r → Z ∈ convexHull ℝ {A, B, C}))
: 1/(p - a)^2 + 1/(p - b)^2 + 1/(p - c)^2 ≥ 1/r^2 :=
sorry
