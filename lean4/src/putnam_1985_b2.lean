import Mathlib

open Set Filter Topology Real Polynomial Function

abbrev putnam_1985_b2_solution : ℕ → ℕ := sorry
-- fun n ↦ ite (n = 101) 99 0
/--
Define polynomials $f_n(x)$ for $n \geq 0$ by $f_0(x)=1$, $f_n(0)=0$ for $n \geq 1$, and
\[
\frac{d}{dx} f_{n+1}(x) = (n+1)f_n(x+1)
\]
for $n \geq 0$. Find, with proof, the explicit factorization of $f_{100}(1)$ into powers of distinct primes.
-/
theorem putnam_1985_b2
  (f : ℕ -> Polynomial ℕ)
  (hf0x : f 0 = 1)
  (hfn0 : ∀ n ≥ 1, (f n).eval 0 = 0)
  (hfderiv : ∀ n : ℕ, derivative (f (n + 1)) = (n + 1) * (Polynomial.comp (f n) (X + 1)))
  : Nat.factorization ((f 100).eval 1) = putnam_1985_b2_solution :=
sorry
