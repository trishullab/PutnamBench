import Mathlib

open MvPolynomial Real Nat

/--
Let $F$ be a field in which $1+1 \neq 0$. Show that the set of solutions to the equation $x^2+y^2=1$ with $x$ and $y$ in $F$ is given by $(x,y)=(1,0)$ and $(x,y)=\left(\frac{r^2-1}{r^2+1},\frac{2r}{r^2+1}\right)$, where $r$ runs through the elements of $F$ such that $r^2 \neq -1$.
-/
theorem putnam_1987_b3
(F : Type*) [Field F]
(hF : (1 : F) + 1 ≠ 0)
: {(x, y) : F × F | x ^ 2 + y ^ 2 = 1} = {(1, 0)} ∪ {((r ^ 2 - 1) / (r ^ 2 + 1), (2 * r) / (r ^ 2 + 1)) | r ∈ {r' : F | r' ^ 2 ≠ -1}} :=
sorry
