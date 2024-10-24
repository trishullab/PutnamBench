import Mathlib

open EuclideanGeometry Filter Topology Set MeasureTheory

/--
Let $f$ be an integrable function in $0 \leq x \leq 1$ and suppose for all $0 \leq i \leq n-1, \int_0^1 x^i f(x) dx = 0$. Further suppose that $\int_0^1 x^n f(x) dx = 1$. Show that $|f(x)| \geq 2^n(n+1)$ on a set of positive measure.
-/
theorem putnam_1972_a6
(f : ℝ → ℝ)
(n : ℤ)
(hn : n ≥ 0)
(hfintegrable: IntegrableOn f (Icc 0 1))
(hfint : ∀ i ∈ Icc 0 (n-1), ∫ x in Icc 0 1, x^i*(f x) = 0)
(hfintlast : ∫ x in Icc 0 1, x^n*(f x) = 1)
: ∃ S, S ⊆ Icc (0 : ℝ) 1 ∧ MeasurableSet S ∧ volume S > 0 ∧ ∀ x ∈ S, |f x| ≥ 2^n * (n + 1) :=
sorry
