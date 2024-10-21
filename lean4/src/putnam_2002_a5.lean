import Mathlib

open Nat Set

/--
Define a sequence by $a_0=1$, together with the rules
$a_{2n+1} = a_n$ and $a_{2n+2} = a_n + a_{n+1}$ for each
integer $n \geq 0$. Prove that every positive rational number
appears in the set
\[
\left\{ \frac{a_{n-1}}{a_n}: n \geq 1 \right\} =
\left\{ \frac{1}{1}, \frac{1}{2}, \frac{2}{1}, \frac{1}{3},
\frac{3}{2}, \dots \right\}.
\]
-/
theorem putnam_2002_a5
(a : ℕ → ℚ)
(ha : a 0 = 1 ∧ ∀ n : ℕ, a (2*n + 1) = a n ∧ a (2*n + 2) = a n + a (n + 1))
: ∀ q : ℚ, q > 0 → q ∈ {a (n - 1) / a n | n ∈ Ici 1} :=
sorry
