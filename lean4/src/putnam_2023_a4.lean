import Mathlib

/--
Let $v_1, \ldots, v_{12}$ be unit vectors in $\mathbb{R}^3$ from the origin to the vertices of a regular icosahedron. Show that for every vector $v \in \mathbb{R}^3$ and every $\epsilon > 0$, there exist integers $a_1, \ldots, a_{12}$ such that $\|a_1v_1 + \cdots + a_{12}v_{12} - v\| < ε$.
-/
theorem putnam_2023_a4
    (v : Fin 12 → EuclideanSpace ℝ (Fin 3))
    (hv :
      letI α : ℝ := (1 + √5) / 4
      letI h : ℝ := 1 / 2
      letI e : (Fin 3 → ℝ) ≃ EuclideanSpace ℝ (Fin 3) := (WithLp.equiv _ _).symm
      ∃ g : EuclideanSpace ℝ (Fin 3) ≃ₗᵢ[ℝ] EuclideanSpace ℝ (Fin 3),
      g ∘ v = e ∘ ![![h, α, 0], ![-h,  α,  0], ![ h, -α,  0], ![-h, -α,  0],
                    ![α, 0, h], ![ α,  0, -h], ![-α,  0,  h], ![-α,  0, -h],
                    ![0, h, α], ![ 0, -h,  α], ![ 0,  h, -α], ![ 0, -h, -α]])
    (w : EuclideanSpace ℝ (Fin 3))
    (ε : ℝ) (hε : ε > 0) :
    ∃ a : Fin 12 → ℤ, ‖∑ i, a i • v i - w‖ < ε :=
  sorry
