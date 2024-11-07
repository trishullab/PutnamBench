import Mathlib

/--
Let $S$ be the set of sequences of length $2018$ whose terms are in the set $\{1,2,3,4,5,6,10\}$ and sum to $3860$. Prove that the cardinality of $S$ is at most $2^{3860} \cdot \left(\frac{2018}{2048}\right)^{2018}$.
-/
theorem putnam_2018_b6
  (S : Finset (Fin 2018 → ℤ))
  (hS : S = {s : Fin 2018 → ℤ | (∀ i : Fin 2018, s i ∈ ({1, 2, 3, 4, 5, 6, 10} : Set ℤ)) ∧ (∑ i : Fin 2018, s i) = 3860}) :
  S.card ≤ 2 ^ 3860 * ((2018 : ℝ) / 2048) ^ 2018 :=
sorry
