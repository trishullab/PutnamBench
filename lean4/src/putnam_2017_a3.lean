import Mathlib

open Topology Filter

-- Note: uses (ℝ → ℝ) instead of (Set.Icc a b → Set.Ioi (0 : ℝ))
/--
Let $a$ and $b$ be real numbers with $a<b$, and let $f$ and $g$ be continuous functions from $[a,b]$ to $(0,\infty)$ such that $\int_a^b f(x)\,dx=\int_a^b g(x)\,dx$ but $f \neq g$. For every positive integer $n$, define $I_n=\int_a^b \frac{(f(x))^{n+1}}{(g(x))^n}\,dx$. Show that $I_1,I_2,I_3,\dots$ is an increasing sequence with $\lim_{n \to \infty} I_n=\infty$.
-/
theorem putnam_2017_a3
(a b : ℝ)
(f g : ℝ → ℝ)
(I : ℕ → ℝ)
(altb : a < b)
(fgcont : ContinuousOn f (Set.Icc a b) ∧ ContinuousOn g (Set.Icc a b))
(fgimg : f '' (Set.Icc a b) ⊆ Set.Ioi 0 ∧ g '' (Set.Icc a b) ⊆ Set.Ioi 0)
(fgint : ∫ x in Set.Ioo a b, f x = ∫ x in Set.Ioo a b, g x)
(fneg : ∃ x : Set.Icc a b, f x ≠ g x)
(hI : ∀ n > 0, I n = ∫ x in Set.Ioo a b, ((f x) ^ (n + 1)) / ((g x) ^ n))
: (∀ n > 0, I (n + 1) > I n) ∧ Tendsto I atTop atTop :=
sorry
