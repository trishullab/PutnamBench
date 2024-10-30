import Mathlib

/--
Let $p(x)$ be a polynomial that is nonnegative for all real $x$.  Prove that for some $k$, there are polynomials $f_1(x),\dots,f_k(x$) such that \[p(x) =  \sum_{j=1}^k (f_j(x))^2.\]
-/
theorem putnam_1999_a2
(p : Polynomial ℝ)
(hp : ∀ x, p.eval x ≥ 0)
: ∃ᵉ (k) (f : Fin k → Polynomial ℝ),
    k > 0 ∧
    ∀ x : ℝ, p.eval x = ∑ j : Fin k, ((f j).eval x) ^ 2 :=
sorry
