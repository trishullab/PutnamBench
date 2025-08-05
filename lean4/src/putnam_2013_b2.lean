import Mathlib

open Function Set

abbrev putnam_2013_b2_solution : ℝ := sorry
-- 3
/--
Let $C = \bigcup_{N=1}^\infty C_N$, where $C_N$ denotes the set of those `cosine polynomials' of the form
\[
f(x) = 1 + \sum_{n=1}^N a_n \cos(2 \pi n x)
\]
for which:
\begin{enumerate}
\item[(i)]
$f(x) \geq 0$ for all real $x$, and
\item[(ii)]
$a_n = 0$ whenever $n$ is a multiple of $3$.
\end{enumerate}
Determine the maximum value of $f(0)$ as $f$ ranges through $C$, and
prove that this maximum is attained.
-/
theorem putnam_2013_b2
  (CN : ℕ → Set (ℝ → ℝ))
  (hCN : ∀ N : ℕ, CN N =
    {f : ℝ → ℝ |
      (∀ x : ℝ, f x ≥ 0) ∧
      ∃ a : List ℝ, a.length = N + 1 ∧ (∀ n : Fin (N + 1), 3 ∣ (n : ℕ) → a[n]! = 0) ∧
      ∀ x : ℝ, f x = 1 + ∑ n ∈ Finset.Icc 1 N, a[(n : ℕ)]! * Real.cos (2*Real.pi*n*x)}) :
  IsGreatest {f 0 | f ∈ ⋃ N ∈ Ici 1, CN N} putnam_2013_b2_solution :=
sorry
