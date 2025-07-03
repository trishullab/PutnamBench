import Mathlib

open Set Filter Topology Real Polynomial

noncomputable abbrev putnam_1985_a6_solution : Polynomial ℝ := sorry
-- 6 * X ^ 2 + 5 * X + 1
/--
If $p(x)= a_0 + a_1 x + \cdots + a_m x^m$ is a polynomial with real coefficients $a_i$, then set
\[
\Gamma(p(x)) = a_0^2 + a_1^2 + \cdots + a_m^2.
\]
Let $F(x) = 3x^2+7x+2$. Find, with proof, a polynomial $g(x)$ with real coefficients such that
\begin{enumerate}
\item[(i)] $g(0)=1$, and
\item[(ii)] $\Gamma(f(x)^n) = \Gamma(g(x)^n)$
\end{enumerate}
for every integer $n \geq 1$.
-/
theorem putnam_1985_a6
  (Γ : Polynomial ℝ → ℝ)
  (f : Polynomial ℝ)
  (hΓ : Γ = fun p ↦ ∑ k ∈ Finset.range (p.natDegree + 1), coeff p k ^ 2)
  (hf : f = 3 * X ^ 2 + 7 * X + 2) :
  let g := putnam_1985_a6_solution;
  g.eval 0 = 1 ∧ ∀ n : ℕ, n ≥ 1 → Γ (f ^ n) = Γ (g ^ n) :=
sorry
