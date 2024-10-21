import Mathlib

open Matrix

/--
Let $*$ be a commutative and associative binary operation on a set $S$. Assume that for every $x$ and $y$ in $S$, there exists $z$ in $S$ such that $x*z=y$. (This $z$ may depend on $x$ and $y$.) Show that if $a,b,c$ are in $S$ and $a*c=b*c$, then $a=b$.
-/
theorem putnam_2012_a2
(S : Type*) [CommSemigroup S]
(a b c : S)
(hS : ∀ x y : S, ∃ z : S, x * z = y)
(habc : a * c = b * c)
: a = b :=
sorry
