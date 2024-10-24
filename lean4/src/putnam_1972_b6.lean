import Mathlib

open EuclideanGeometry Filter Topology Set MeasureTheory Metric

/--
Let $n_1 < n_2 < \dots < n_k$ be a set of positive integers. Prove that the polynomail $1 + z^{n_1} + z^{n_2} + \dots + z^{n_k}$ has not roots inside the circle $|z| < (\frac{\sqrt{5}-1}{2}$.
-/
theorem putnam_1972_b6
(k : ℕ)
(hk : k ≥ 1)
(n : Fin k → ℤ)
(hn : ∀ i : Fin k, n i > 0)
(hn' : ∀ i j : Fin k, i < j → n i < n j)
(zpoly : ℂ → ℂ)
(hzpoly : zpoly = fun z => 1 + ∑ i : Fin k, z^(n i))
: ∀ z : ℂ, z ∈ ball 0 ((Real.sqrt 5 - 1)/2) → zpoly z ≠ 0 :=
sorry
