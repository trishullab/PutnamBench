import Mathlib

/--
Let $n$ be a positive integer. Suppose that $A$, $B$, and $M$ are $n \times n$ matrices with real entries such that $AM = MB$, and such that $A$ and $B$ have the same characteristic polynomial. Prove that $\det(A-MX)=\det(B-XM)$ for every $n \times n$ matrix $X$ with real entries.
-/
theorem putnam_2015_a6
(n : ℕ)
(A B M : Matrix (Fin n) (Fin n) ℝ)
(npos : n > 0)
(hmul : A * M = M * B)
(hpoly : Matrix.charpoly A = Matrix.charpoly B)
: ∀ X : Matrix (Fin n) (Fin n) ℝ, (A - M * X).det = (B - X * M).det :=
sorry
