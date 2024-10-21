import Mathlib

open Matrix Filter Topology Set Nat

/--
Let $D_n$ be the determinant of the $n$ by $n$ matrix whose value in the $i$th row and $j$th column is $|i-j|$. Show that $D_n = (-1)^{n-1} * (n-1) * (2^{n-2}).$
-/
theorem putnam_1969_a2
(D : (n : ℕ) → Matrix (Fin n) (Fin n) ℝ)
(hD : D = fun (n : ℕ) => λ (i : Fin n) (j : Fin n) => |(i : ℝ) - (j : ℝ)| )
: ∀ n, n ≥ 2 → (D n).det = (-1)^((n : ℤ)-1) * ((n : ℤ)-1) * 2^((n : ℤ)-2) :=
sorry
