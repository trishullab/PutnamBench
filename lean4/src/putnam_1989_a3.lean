import Mathlib
open Complex

/--
Prove that if
\[
11z^{10}+10iz^9+10iz-11=0,
\]
then $|z|=1.$ (Here $z$ is a complex number and $i^2=-1$.)
-/
theorem putnam_1989_a3
(z : ℂ)
(hz : 11 * z ^ 10 + 10 * I * z ^ 9 + 10 * I * z - 11 = 0)
: (‖z‖ = 1) :=
sorry
