import Mathlib

open MeasureTheory

/--
Prove that for every integer $n$ greater than 1: \[ \frac{3n+1}{2n+2} < \left( \frac{1}{n} \right)^n + \left(\frac{2}{n} \right)^n + \cdots + \left(\frac{n}{n} \right)^n < 2. \]
-/
theorem putnam_1962_b5
(n : ℤ)
(ng1 : n > 1)
: (3 * (n : ℝ) + 1) / (2 * n + 2) < ∑ i : Finset.Icc 1 n, ((i : ℝ) / n) ^ (n : ℝ) ∧ ∑ i : Finset.Icc 1 n, ((i : ℝ) / n) ^ (n : ℝ) < 2 :=
sorry
