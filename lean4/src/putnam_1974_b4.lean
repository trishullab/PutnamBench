import Mathlib

open Set Nat Polynomial Filter Topology

/--
Let $f : \mathbb{R} \to \mathbb{R}$ be continuous in each variable seperately. Show that there exists a sequence of continuous functions $g_n : \mathbb{R}^2 \to \mathbb{R}$ such that $f(x,y) = \lim_{n \to \infty} g_n(x,y)$ for all $(x,y) \in \mathbb{R}^2$.
-/
theorem putnam_1974_b4
(f : ℝ × ℝ → ℝ)
(hfcontx : ∀ y : ℝ, Continuous (fun x => f ⟨x, y⟩))
(hfconty : ∀ x : ℝ, Continuous (fun y => f ⟨x, y⟩))
: ∃ g : ℕ → (ℝ × ℝ → ℝ), (∀ n : ℕ, Continuous (g n)) ∧ (∀ x y : ℝ, Tendsto (fun n => g n ⟨x, y⟩) atTop (𝓝 (f ⟨x, y⟩))) :=
sorry
