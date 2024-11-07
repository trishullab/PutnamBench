import Mathlib

noncomputable abbrev putnam_2015_a4_solution : ℝ := sorry
-- 4 / 7
/--
For each real number $x$, let
\[
f(x) = \sum_{n\in S_x} \frac{1}{2^n},
\]
where $S_x$ is the set of positive integers $n$ for which $\lfloor nx \rfloor$ is even. What is the largest real number $L$ such that $f(x) \geq L$ for all $x \in [0,1)$? (As usual, $\lfloor z \rfloor$ denotes the greatest integer less than or equal to $z$.)
-/
theorem putnam_2015_a4
(S : ℝ → Set ℤ)
(f : ℝ → ℝ)
(p : ℝ → Prop)
(hS : S = fun (x : ℝ) ↦ {n : ℤ | n > 0 ∧ Even ⌊n * x⌋})
(hf : f = fun (x : ℝ) ↦ ∑' n : S x, 1 / 2 ^ (n : ℤ))
(hp : ∀ l, p l ↔ ∀ x ∈ Set.Ico 0 1, f x ≥ l)
: IsGreatest p putnam_2015_a4_solution :=
sorry
