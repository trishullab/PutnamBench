import Mathlib

open Filter Topology

noncomputable abbrev putnam_1997_a3_solution : ℝ := sorry
-- Real.sqrt (Real.exp 1)
/--
Evaluate \begin{gather*} \int_0^\infty \left(x-\frac{x^3}{2}+\frac{x^5}{2\cdot 4}-\frac{x^7}{2\cdot 4\cdot 6}+\cdots\right) \\ \left(1+\frac{x^2}{2^2}+\frac{x^4}{2^2\cdot 4^2}+\frac{x^6}{2^2\cdot 4^2 \cdot 6^2}+\cdots\right)\,dx. \end{gather*}
-/
theorem putnam_1997_a3
(series1 series2 : ℝ → ℝ)
(hseries1 : series1 = fun x => ∑' n : ℕ, (-1)^n * x^(2*n + 1)/(∏ i : Finset.range n, 2 * ((i : ℝ) + 1)))
(hseries2 : series2 = fun x => ∑' n : ℕ, x^(2*n)/(∏ i : Finset.range n, (2 * ((i : ℝ) + 1))^2))
: Tendsto (fun t => ∫ x in Set.Icc 0 t, series1 x * series2 x) atTop (𝓝 (putnam_1997_a3_solution)) :=
sorry
