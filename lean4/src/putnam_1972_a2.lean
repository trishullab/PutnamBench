import Mathlib

open EuclideanGeometry Filter Topology Set

/--
Let $S$ be a set and $\cdot$ be a binary operation on $S$ satisfying: (1) for all $x,y$ in $S$, $x \cdot (x \cdot y) = y$ (2) for all $x,y$ in $S$, $(y \cdot x) \cdot x = y$. Show that $\cdot$ is commutative but not necessarily associative.
-/
theorem putnam_1972_a2
: (∀ (S : Type*) (_ : Mul S), (∀ x y : S, x * (x * y) = y ∧ ((y * x) * x) = y) → (∀ x y : S, x * y = y * x)) ∧ ∃ (S : Type*) (_ : Mul S), (∀ x y : S, x * (x * y) = y ∧ ((y * x) * x) = y) ∧ ¬(∀ x y z : S, x * (y * z) = (x * y) * z) :=
sorry
