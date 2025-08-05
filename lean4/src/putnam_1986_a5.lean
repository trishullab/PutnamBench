import Mathlib

/--
Suppose $f_1(x),f_2(x),\dots,f_n(x)$ are functions of $n$ real variables $x=(x_1,\dots,x_n)$ with continuous second-order partial derivatives everywhere on $\mathbb{R}^n$. Suppose further that there are constants $c_{ij}$ such that $\frac{\partial f_i}{\partial x_j}-\frac{\partial f_j}{\partial x_i}=c_{ij}$ for all $i$ and $j$, $1 \leq i \leq n$, $1 \leq j \leq n$. Prove that there is a function $g(x)$ on $\mathbb{R}^n$ such that $f_i+\partial g/\partial x_i$ is linear for all $i$, $1 \leq i \leq n$. (A linear function is one of the form $a_0+a_1x_1+a_2x_2+\dots+a_nx_n$.)
-/
theorem putnam_1986_a5
  (n : ℕ) (hn : 1 ≤ n)
  (f : Fin n → ((Fin n → ℝ) → ℝ))
  (hf : ∀ i, ContDiff ℝ 2 (f i))
  (C : Fin n → Fin n → ℝ)
  (hf' : ∀ i j : Fin n, ∀ x : Fin n → ℝ, fderiv ℝ (f i) x (Pi.single j 1) - fderiv ℝ (f j) x (Pi.single i 1) = C i j)
  : ∃ g : (Fin n → ℝ) → ℝ, ∀ i : Fin n, IsLinearMap ℝ (λ x ↦ f i x + fderiv ℝ g x (Pi.single i 1)) :=
  sorry
