import Mathlib

open Set Topology Filter Polynomial MeasureTheory

/--
Let $z_i$ be complex numbers for $i = 1, 2, \dots, n$. Show that
\[
\left \lvert \mathrm{Re} \, [(z_1^2 + z_2^2 + \dots + z_n^2)^{1/2} ] \right \rvert \leq \lvert \mathrm{Re} \, z_1 \rvert + \lvert \mathrm{Re} \, z_2 \rvert + \dots + \lvert \mathrm{Re} \, z_n \rvert.
\]
-/
theorem putnam_1979_b6
(n : ℕ)
(z : Fin n → ℂ)
: (|((∑ i : Fin n, (z i) ^ 2) ^ ((1 : ℂ) / 2)).re| ≤ ∑ i : Fin n, |(z i).re|) :=
sorry
