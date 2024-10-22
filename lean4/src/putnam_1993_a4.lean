import Mathlib

/--
Let $x_1,x_2,\dots,x_{19}$ be positive integers each of which is less than or equal to $93$. Let $y_1,y_2,\dots,y_{93}$ be positive integers each of which is less than or equal to $19$. Prove that there exists a (nonempty) sum of some $x_i$'s equal to a sum of some $y_j$'s.
-/
theorem putnam_1993_a4
(x : Fin 19 → ℤ)
(y : Fin 93 → ℤ)
(hx : ∀ i : Fin 19, x i > 0 ∧ x i ≤ 93)
(hy : ∀ j : Fin 93, y j > 0 ∧ y j ≤ 19)
: ∃ (is : Finset (Fin 19)) (js : Finset (Fin 93)), is ≠ ∅ ∧ (∑ i : is, x i) = (∑ j : js, y j) :=
sorry
