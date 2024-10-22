import Mathlib

open Set Real

/--
Let $a_1, a_2, \dots , a_n$ be reals in the interval $(0, \pi)$ with arithmetic mean $\mu$. Show that
\[
\prod_{i=1}^n \left( \frac{\sin a_i}{a_i} \right) \leq \left( \frac{\sin \mu}{\mu} \right)^n.
\]
-/
theorem putnam_1978_a5
(n : ℕ)
(npos : n > 0)
(a : Fin n → ℝ)
(ha : ∀ i : Fin n, a i ∈ Ioo 0 Real.pi)
(μ : ℝ)
(hμ : μ = ∑ i : Fin n, a i / n)
: (∏ i : Fin n, sin (a i) / (a i) ≤ (sin μ / μ) ^ n) :=
sorry
