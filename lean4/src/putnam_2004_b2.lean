import Mathlib

open Nat Topology Filter

/--
Let $m$ and $n$ be positive integers. Show that $\frac{(m+n)!}{(m+n)^{m+n}}<\frac{m!}{m^m}\frac{n!}{n^n}$.
-/
theorem putnam_2004_b2
(m n : ℕ)
(mnpos : m > 0 ∧ n > 0)
: ((m + n)! / ((m + n) ^ (m + n) : ℚ)) < (((m)! / (m ^ m : ℚ)) * ((n)! / (n ^ n : ℚ))) :=
sorry
