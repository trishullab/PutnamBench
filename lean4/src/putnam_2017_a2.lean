import Mathlib

/--
Let $Q_0(x)=1$, $Q_1(x)=x$, and $Q_n(x)=\frac{(Q_{n-1}(x))^2-1}{Q_{n-2}(x)}$ for all $n \geq 2$. Show that, whenever $n$ is a positive integer, $Q_n(x)$ is equal to a polynomial with integer coefficients.
-/
theorem putnam_2017_a2
(Q : ℕ → ℝ → ℝ)
(hQbase : ∀ x : ℝ, Q 0 x = 1 ∧ Q 1 x = x)
(hQn : ∀ n ≥ 2, ∀ x : ℝ, Q n x = ((Q (n - 1) x) ^ 2 - 1) / Q (n - 2) x)
: ∀ n > 0, ∃ P : Polynomial ℝ, (∀ i : ℕ, P.coeff i = round (P.coeff i)) ∧ Q n = P.eval :=
sorry
