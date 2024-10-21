import Mathlib

open Filter Topology Set Nat

abbrev putnam_2008_b2_solution : ℝ := sorry
-- -1
/--
Let $F_0(x)=\ln x$. For $n \geq 0$ and $x>0$, let $F_{n+1}(x)=\int_0^x F_n(t)\,dt$. Evaluate $\lim_{n \to \infty} \frac{n!F_n(1)}{\ln n}$.
-/
theorem putnam_2008_b2
(F : ℕ → ℝ → ℝ)
(hF0 : ∀ x : ℝ, F 0 x = Real.log x)
(hFn : ∀ n : ℕ, ∀ x > 0, F (n + 1) x = ∫ t in Set.Ioo 0 x, F n t)
: Tendsto (fun n : ℕ => ((n)! * F n 1) / Real.log n) atTop (𝓝 putnam_2008_b2_solution) :=
sorry
