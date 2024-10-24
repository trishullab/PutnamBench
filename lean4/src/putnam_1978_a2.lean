import Mathlib

/--
Let $A$ be the real $n \times n$ matrix $(a_{ij})$ where $a_{ij} = a$ for $i < j$, $b \; (\neq a)$ for $i > j$, and $c_i$ for $i = j$. Show that $\det A = \frac{b p(a) - a p(b)}{b - a}$, where $p(x) = \prod_{i=1}^n (c_i - x)$.
-/
theorem putnam_1978_a2
(n : ℕ)
(npos : n > 0)
(a b : ℝ)
(hab : a ≠ b)
(c : Fin n → ℝ)
(A : Matrix (Fin n) (Fin n) ℝ)
(hA : A = fun i j ↦ ite (i < j) a (ite (i > j) b (c i)))
(p : ℝ → ℝ)
(hp : p = fun x ↦ ∏ i : Fin n, (c i - x))
: (A.det = ((b * p a - a * p b) / (b - a))) :=
sorry
