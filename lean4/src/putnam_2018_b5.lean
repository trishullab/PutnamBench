import Mathlib

open Function

/--
Let $f=(f_1,f_2)$ be a function from $\mathbb{R}^2$ to $\mathbb{R}^2$ with continuous partial derivatives $\frac{\partial f_i}{\partial x_j}$ that are positive everywhere. Suppose that $\frac{\partial f_1}{\partial x_1} \frac{\partial f_2}{\partial x_2}-\frac{1}{4}\left(\frac{\partial f_1}{\partial x_2}+\frac{\partial f_2}{\partial x_1}\right)^2>0$ everywhere. Prove that $f$ is one-to-one.
-/
theorem putnam_2018_b5
    (f : (Fin 2 → ℝ) → (Fin 2 → ℝ))
    (h₁ : ContDiff ℝ 1 f)
    (h₂ : ∀ x i j, 0 < fderiv ℝ f x (Pi.single i 1) j)
    (h₃ : ∀ x, 0 < fderiv ℝ f x ![1, 0] 0 * fderiv ℝ f x ![0, 1] 1 -
      (1 / 4) * (fderiv ℝ f x ![1, 0] 1 + fderiv ℝ f x ![0, 1] 0) ^ 2) :
    Injective f :=
  sorry
