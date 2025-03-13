import Mathlib

open scoped Real
open scoped Topology

noncomputable abbrev putnam_2024_a6_solution : ℕ → ℝ := sorry
--fun n => 10^(n*(n-1)/2 : ℕ)
/--
Let $c_0, c_1, c_2, ...$ be a sequence defined so that
$$\frac{1 - 3x - \sqrt{1 - 14x + 9x^2}}{4} = \sum_{k=0}^\infty c_k x^k$$
for sufficiently small $x$.
For a positive integer $n$, let $A$ be the $n$-by-$n$ matrix whose
$(i, j)$-entry is $c_{i+j-1}$ for $i$ and $j$ in $\{1, 2, ..., n\}$.
Find the determinant of $A$.
-/
theorem putnam_2024_a6
    (c : ℕ → ℝ)
    (n : ℕ)
    (h₀ : ∀ᶠ x in 𝓝 0,
      HasSum (fun k => c k * x ^ k) ((1 - 3 * x - √(1 - 14 * x + 9 * x ^ 2)) / 4))
    (h₁ : 0 < n) :
    (Matrix.of fun (i j : Fin n) => c (i + j + 1)).det = putnam_2024_a6_solution n :=
  sorry
