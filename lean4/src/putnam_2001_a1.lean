import Mathlib

open Topology Filter

/--
Consider a set $S$ and a binary operation $*$, i.e., for each $a,b\in S$, $a*b\in S$.  Assume $(a*b)*a=b$ for all $a,b\in S$.  Prove that $a*(b*a)=b$ for all $a,b\in S$.
-/
theorem putnam_2001_a1
(S : Type*)
[Mul S]
(hS : ∀ a b : S, (a * b) * a = b)
: ∀ a b : S, a * (b * a) = b :=
sorry
