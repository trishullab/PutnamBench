import Mathlib

open Function Set MeasureTheory

-- Note: uses (Fin m → Fin m → Fin m → ℝ) instead of ensuring inputs are strictly increasing
/--
For $m \geq 3$, a list of $\binom{m}{3}$ real numbers $a_{ijk}$ ($1 \leq i<j<k \leq m$) is said to be \emph{area definite} for $\mathbb{R}^n$ if the inequality $\sum_{1 \leq i<j<k \leq m} a_{ijk} \cdot \text{Area}(\Delta A_iA_jA_k) \geq 0$ holds for every choice of $m$ points $A_1,\dots,A_m$ in $\mathbb{R}^n$. For example, the list of four numbers $a_{123}=a_{124}=a_{134}=1$, $a_{234}=-1$ is area definite for $\mathbb{R}^2$. Prove that if a list of $\binom{m}{3}$ numbers is area definite for $\mathbb{R}^2$, then it is area definite for $\mathbb{R}^3$.
-/
theorem putnam_2013_a5
(m : ℕ)
(area2 : (Fin 2 → ℝ) → (Fin 2 → ℝ) → (Fin 2 → ℝ) → ℝ)
(area3 : (Fin 3 → ℝ) → (Fin 3 → ℝ) → (Fin 3 → ℝ) → ℝ)
(areadef2 : (Fin m → Fin m → Fin m → ℝ) → Prop)
(areadef3 : (Fin m → Fin m → Fin m → ℝ) → Prop)
(mge3 : m ≥ 3)
(harea2 : ∀ a b c, area2 a b c = (volume (convexHull ℝ {a, b, c})).toReal)
(harea3 : ∀ a b c, area3 a b c = (μH[2] (convexHull ℝ {a, b, c})).toReal)
(hareadef2 : ∀ a, areadef2 a ↔ ∀ A : Fin m → (Fin 2 → ℝ), (∑ i : Fin m, ∑ j : Fin m, ∑ k : Fin m, if (i < j ∧ j < k) then (a i j k * area2 (A i) (A j) (A k)) else 0) ≥ 0)
(hareadef3 : ∀ a, areadef3 a ↔ ∀ A : Fin m → (Fin 3 → ℝ), (∑ i : Fin m, ∑ j : Fin m, ∑ k : Fin m, if (i < j ∧ j < k) then (a i j k * area3 (A i) (A j) (A k)) else 0) ≥ 0)
: ∀ a, areadef2 a → areadef3 a :=
sorry
