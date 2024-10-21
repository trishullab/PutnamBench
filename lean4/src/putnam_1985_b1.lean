import Mathlib

open Set Filter Topology Real Polynomial Function

abbrev putnam_1985_b1_solution : Fin 5 → ℤ := sorry
-- fun i ↦ i - 2
/--
Let $k$ be the smallest positive integer for which there exist distinct integers $m_1, m_2, m_3, m_4, m_5$ such that the polynomial
\[
p(x) = (x-m_1)(x-m_2)(x-m_3)(x-m_4)(x-m_5)
\]
has exactly $k$ nonzero coefficients. Find, with proof, a set of integers $m_1, m_2, m_3, m_4, m_5$ for which this minimum $k$ is achieved.
-/
theorem putnam_1985_b1
(p : (Fin 5 → ℤ) → (Polynomial ℝ))
(hp : p = fun m ↦ ∏ i : Fin 5, ((X : Polynomial ℝ) - m i))
(numnzcoeff : Polynomial ℝ → ℕ)
(hnumnzcoeff : numnzcoeff = fun p ↦ {j ∈ Finset.range (p.natDegree + 1) | coeff p j ≠ 0}.card)
: (Injective putnam_1985_b1_solution ∧ ∀ m : Fin 5 → ℤ, Injective m → numnzcoeff (p putnam_1985_b1_solution) ≤ numnzcoeff (p m)) :=
sorry
