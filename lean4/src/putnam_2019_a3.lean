import Mathlib

open Topology Filter

noncomputable abbrev putnam_2019_a3_solution : ℝ := sorry
-- 2019^(-(1:ℝ)/2019)
/--
Given real numbers $b_0, b_1, \dots, b_{2019}$ with $b_{2019} \neq 0$, let $z_1,z_2,\dots,z_{2019}$ be
the roots in the complex plane of the polynomial
\[
P(z) = \sum_{k=0}^{2019} b_k z^k.
\]
Let $\mu = (|z_1| + \cdots + |z_{2019}|)/2019$ be the average of the distances from $z_1,z_2,\dots,z_{2019}$ to the origin. Determine the largest constant $M$ such that $\mu \geq M$ for all choices of $b_0,b_1,\dots, b_{2019}$ that satisfy
\[
1 \leq b_0 < b_1 < b_2 < \cdots < b_{2019} \leq 2019.
\]
-/
theorem putnam_2019_a3
  (v : Polynomial ℂ → Prop)
  (hv : v = fun b => b.degree = 2019 ∧ 1 ≤ (b.coeff 0).re ∧ (b.coeff 2019).re ≤ 2019 ∧
    (∀ i : Fin 2020, (b.coeff i).im = 0) ∧ (∀ i : Fin 2019, (b.coeff i).re < (b.coeff (i + 1)).re))
  (μ : Polynomial ℂ → ℝ)
  (hμ : μ = fun b => (Multiset.map (fun ω : ℂ => ‖ω‖) (Polynomial.roots b)).sum/2019) :
  IsGreatest {M : ℝ | ∀ b, v b → μ b ≥ M} putnam_2019_a3_solution :=
sorry
