import Mathlib

open Set Filter Topology

/--
A \emph{composite} (positive integer) is a product $ab$ with $a$ and $b$ not necessarily distinct integers in $\{2,3,4,\dots\}$. Show that every composite is expressible as $xy+xz+yz+1$, with $x,y,z$ positive integers.
-/
theorem putnam_1988_b1
: ∀ a ≥ 2, ∀ b ≥ 2, ∃ x y z : ℤ, x > 0 ∧ y > 0 ∧ z > 0 ∧ a * b = x * y + x * z + y * z + 1 :=
sorry
