import Mathlib

open Topology Filter

-- Note: There may be multiple possible correct answers.
noncomputable abbrev putnam_2011_a3_solution : ℝ × ℝ := sorry
-- (-1, 2 / Real.pi)
/--
Find a real number $c$ and a positive number $L$ for which $\lim_{r \to \infty} \frac{r^c \int_0^{\pi/2} x^r\sin x\,dx}{\int_0^{\pi/2} x^r\cos x\,dx}=L$.
-/
theorem putnam_2011_a3
: putnam_2011_a3_solution.2 > 0 ∧ Tendsto (fun r : ℝ => (r ^ putnam_2011_a3_solution.1 * ∫ x in Set.Ioo 0 (Real.pi / 2), x ^ r * Real.sin x) / (∫ x in Set.Ioo 0 (Real.pi / 2), x ^ r * Real.cos x)) atTop (𝓝 putnam_2011_a3_solution.2) :=
sorry
