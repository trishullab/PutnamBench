import Mathlib

open Filter Topology Set

/--
Let $n$ be a positive integer. Prove that $\sum_{k=1}^n(-1)^{\lfloor k(\sqrt{2}-1) \rfloor} \geq 0$.
-/
theorem putnam_2020_b6
(n : ℕ)
(npos : n > 0)
: ∑ k ∈ Finset.Icc 1 n, ((-1) ^ Int.floor (k * (Real.sqrt 2 - 1)) : ℝ) ≥ 0 :=
sorry
