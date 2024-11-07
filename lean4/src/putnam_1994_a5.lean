import Mathlib

open Filter Topology

/--
Let $(r_n)_{n \geq 0}$ be a sequence of positive real numbers such that $\lim_{n \to \infty} r_n=0$. Let $S$ be the set of numbers representable as a sum $r_{i_1}+r_{i_2}+\cdots+r_{i_{1994}}$, with $i_1<i_2<\cdots<i_{1994}$. Show that every nonempty interval $(a,b)$ contains a nonempty subinterval $(c,d)$ that does not intersect $S$.
-/
theorem putnam_1994_a5
  (r : ℕ → ℝ)
  (S : Set ℝ)
  (rpos : ∀ n, r n > 0)
  (rlim : Tendsto r atTop (𝓝 0))
  (hS : S = {x | ∃ i : Fin 1994 → ℕ, (∀ j k : Fin 1994, j < k → i j < i k) ∧ (x = ∑ j : Fin 1994, r (i j))}) :
  ∀ a b : ℝ, a < b → (∃ c d : ℝ, a ≤ c ∧ c < d ∧ d ≤ b ∧ (Set.Ioo c d) ∩ S = ∅) :=
sorry
