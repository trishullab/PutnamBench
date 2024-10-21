import Mathlib

open Matrix Function

-- Note: uses (ℝ → ℝ) instead of (Set.Icc (-1 : ℝ) 1 → ℝ)
noncomputable abbrev putnam_2012_a3_solution : ℝ → ℝ := sorry
-- fun x : ℝ => Real.sqrt (1 - x^2)
/--
Let $f: [-1, 1] \to \mathbb{R}$ be a continuous function such that
\begin{itemize}
\item[(i)]
$f(x) = \frac{2-x^2}{2} f \left( \frac{x^2}{2-x^2} \right)$ for every $x$ in $[-1, 1]$,
\item[(ii)]
$f(0) = 1$, and
\item[(iii)]
$\lim_{x \to 1^-} \frac{f(x)}{\sqrt{1-x}}$ exists and is finite.
\end{itemize}
Prove that $f$ is unique, and express $f(x)$ in closed form.
-/
theorem putnam_2012_a3
(S : Set ℝ)
(hS : S = Set.Icc (-1 : ℝ) 1)
(fsat : (ℝ → ℝ) → Prop)
(hfsat : fsat = fun f : ℝ → ℝ => ContinuousOn f S ∧
(∀ x ∈ S, f x = ((2 - x^2)/2)*f (x^2/(2 - x^2))) ∧ f 0 = 1 ∧
(∃ y : ℝ, leftLim (fun x : ℝ => (f x)/Real.sqrt (1 - x)) 1 = y))
: fsat putnam_2012_a3_solution ∧ ∀ f : ℝ → ℝ, fsat f → ∀ x ∈ S, f x = putnam_2012_a3_solution x :=
sorry
