import Mathlib

open scoped Real
open scoped Topology

noncomputable abbrev putnam_2024_b6_solution : ℝ := sorry
-- -1/2
/--
For a real number $a$, let $F_a(x) = \sum_{n\geq 1} n^a e^{2n}x^{n^2}$ for $0 \leq x < 1$.
Find a real number $c$ such that $\lim_{x \to 1^-} F_a(x)e^{-1/(1-x)} = 0$ for all $a < c$, and $\lim_{x \to 1^-} F_a(x)e^{-1/(1-x)} = \infty$ for all $a > c$.
-/
theorem putnam_2024_b6
    (F : ℝ → ℝ → ℝ) (c : ℝ)
    (hF : ∀ a, ∀ x ∈ Set.Ico 0 1,
      HasSum (fun (n : ℕ) => (n+1)^a * rexp (2*(n+1)) * x^(n+1)^2) (F a x)) :
    ((∀ a < c, Filter.Tendsto (fun x => F a x * rexp (- 1 / (1-x))) (𝓝[<] 1) (𝓝 0)) ∧
    (∀ a > c, Filter.Tendsto (fun x => F a x * rexp (- 1 / (1-x))) (𝓝[<] 1) Filter.atTop))
    ↔ c = putnam_2024_b6_solution :=
  sorry
